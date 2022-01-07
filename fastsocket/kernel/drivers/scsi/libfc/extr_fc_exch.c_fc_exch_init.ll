; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@fc_seq_start_next = common dso_local global i64 0, align 8
@fc_seq_set_resp = common dso_local global i64 0, align 8
@fc_exch_seq_send = common dso_local global i64 0, align 8
@fc_seq_send = common dso_local global i64 0, align 8
@fc_seq_els_rsp_send = common dso_local global i64 0, align 8
@fc_exch_done = common dso_local global i64 0, align 8
@fc_exch_mgr_reset = common dso_local global i64 0, align 8
@fc_seq_exch_abort = common dso_local global i64 0, align 8
@fc_seq_assign = common dso_local global i64 0, align 8
@fc_seq_release = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_exch_init(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 9
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @fc_seq_start_next, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %11 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 9
  store i64 %9, i64* %12, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %15 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @fc_seq_set_resp, align 8
  %21 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %22 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 8
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* @fc_exch_seq_send, align 8
  %32 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* @fc_seq_send, align 8
  %43 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %44 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %48 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* @fc_seq_els_rsp_send, align 8
  %54 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %55 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %59 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* @fc_exch_done, align 8
  %65 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %66 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %70 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load i64, i64* @fc_exch_mgr_reset, align 8
  %76 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %77 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %81 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load i64, i64* @fc_seq_exch_abort, align 8
  %87 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %88 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %79
  %91 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %92 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %90
  %97 = load i64, i64* @fc_seq_assign, align 8
  %98 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %99 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %90
  %102 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %103 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load i64, i64* @fc_seq_release, align 8
  %109 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %110 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %101
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
