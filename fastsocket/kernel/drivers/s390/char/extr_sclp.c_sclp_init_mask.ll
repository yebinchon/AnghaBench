; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_init_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_init_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.init_sccb = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@sclp_init_sccb = common dso_local global i64 0, align 8
@sclp_lock = common dso_local global i32 0, align 4
@sclp_mask_state = common dso_local global i64 0, align 8
@sclp_mask_state_idle = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@sclp_activation_state = common dso_local global i64 0, align 8
@sclp_activation_state_inactive = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sclp_mask_state_initializing = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SCLP_MASK_RETRY = common dso_local global i32 0, align 4
@sclp_init_req = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@SCLP_BUSY_INTERVAL = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@SCLP_REQ_FAILED = common dso_local global i64 0, align 8
@sclp_receive_mask = common dso_local global i64 0, align 8
@sclp_send_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sclp_init_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_init_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.init_sccb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i64, i64* @sclp_init_sccb, align 8
  %12 = inttoptr i64 %11 to %struct.init_sccb*
  store %struct.init_sccb* %12, %struct.init_sccb** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %13)
  %15 = load i64, i64* @sclp_mask_state, align 8
  %16 = load i64, i64* @sclp_mask_state_idle, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %121

23:                                               ; preds = %1
  %24 = load i64, i64* @sclp_activation_state, align 8
  %25 = load i64, i64* @sclp_activation_state_inactive, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %121

32:                                               ; preds = %23
  %33 = load i64, i64* @sclp_mask_state_initializing, align 8
  store i64 %33, i64* @sclp_mask_state, align 8
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @__sclp_get_mask(i64* %6, i64* %7)
  br label %39

38:                                               ; preds = %32
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %113, %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SCLP_MASK_RETRY, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %116

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @__sclp_make_init_req(i64 %47, i64 %48)
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %50)
  %52 = call i64 @sclp_add_request(%struct.TYPE_5__* @sclp_init_req)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* @SCLP_BUSY_INTERVAL, align 8
  %57 = load i64, i64* @HZ, align 8
  %58 = mul i64 %56, %57
  %59 = add i64 %55, %58
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %65, %54
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @time_before(i64 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @sclp_sync_wait()
  br label %60

67:                                               ; preds = %60
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %68)
  br label %113

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %81, %70
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 0), align 8
  %73 = load i64, i64* @SCLP_REQ_DONE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 0), align 8
  %77 = load i64, i64* @SCLP_REQ_FAILED, align 8
  %78 = icmp ne i64 %76, %77
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = call i32 (...) @sclp_sync_wait()
  br label %71

83:                                               ; preds = %79
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %84)
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 0), align 8
  %87 = load i64, i64* @SCLP_REQ_DONE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %83
  %90 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %91 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %100 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* @sclp_receive_mask, align 8
  %102 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %103 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* @sclp_send_mask, align 8
  br label %106

105:                                              ; preds = %95
  store i64 0, i64* @sclp_receive_mask, align 8
  store i64 0, i64* @sclp_send_mask, align 8
  br label %106

106:                                              ; preds = %105, %98
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %107)
  %109 = call i32 (...) @sclp_dispatch_state_change()
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %110)
  store i32 0, i32* %9, align 4
  br label %116

112:                                              ; preds = %89, %83
  br label %113

113:                                              ; preds = %112, %67
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %42

116:                                              ; preds = %106, %42
  %117 = load i64, i64* @sclp_mask_state_idle, align 8
  store i64 %117, i64* @sclp_mask_state, align 8
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %116, %27, %18
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__sclp_get_mask(i64*, i64*) #1

declare dso_local i32 @__sclp_make_init_req(i64, i64) #1

declare dso_local i64 @sclp_add_request(%struct.TYPE_5__*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @sclp_sync_wait(...) #1

declare dso_local i32 @sclp_dispatch_state_change(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
