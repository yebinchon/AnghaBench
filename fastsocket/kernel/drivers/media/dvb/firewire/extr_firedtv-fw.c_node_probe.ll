; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-fw.c_node_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-fw.c_node_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.firedtv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_MODEL_NAME_LEN = common dso_local global i32 0, align 4
@CSR_MODEL = common dso_local global i32 0, align 4
@backend = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@node_list_lock = common dso_local global i32 0, align 4
@node_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @node_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load i32, i32* @MAX_MODEL_NAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.TYPE_2__* @fw_unit(%struct.device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CSR_MODEL, align 4
  %19 = trunc i64 %11 to i32
  %20 = call i32 @fw_csr_string(i32 %17, i32 %18, i8* %13, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = call %struct.firedtv* @fdtv_alloc(%struct.device* %21, i32* @backend, i8* %13, i32 %28)
  store %struct.firedtv* %29, %struct.firedtv** %4, align 8
  %30 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %31 = icmp ne %struct.firedtv* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %74

35:                                               ; preds = %27
  %36 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i32 @fdtv_register_rc(%struct.firedtv* %36, %struct.device* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %70

42:                                               ; preds = %35
  %43 = call i32 @spin_lock_irq(i32* @node_list_lock)
  %44 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %45 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %45, i32* @node_list)
  %47 = call i32 @spin_unlock_irq(i32* @node_list_lock)
  %48 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %49 = call i32 @avc_identify_subunit(%struct.firedtv* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %62

53:                                               ; preds = %42
  %54 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %55 = call i32 @fdtv_dvb_register(%struct.firedtv* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %61 = call i32 @avc_register_remote_control(%struct.firedtv* %60)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %74

62:                                               ; preds = %58, %52
  %63 = call i32 @spin_lock_irq(i32* @node_list_lock)
  %64 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %65 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %64, i32 0, i32 0
  %66 = call i32 @list_del(i32* %65)
  %67 = call i32 @spin_unlock_irq(i32* @node_list_lock)
  %68 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %69 = call i32 @fdtv_unregister_rc(%struct.firedtv* %68)
  br label %70

70:                                               ; preds = %62, %41
  %71 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %72 = call i32 @kfree(%struct.firedtv* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %59, %32
  %75 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fw_csr_string(i32, i32, i8*, i32) #2

declare dso_local %struct.TYPE_2__* @fw_unit(%struct.device*) #2

declare dso_local %struct.firedtv* @fdtv_alloc(%struct.device*, i32*, i8*, i32) #2

declare dso_local i32 @fdtv_register_rc(%struct.firedtv*, %struct.device*) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @avc_identify_subunit(%struct.firedtv*) #2

declare dso_local i32 @fdtv_dvb_register(%struct.firedtv*) #2

declare dso_local i32 @avc_register_remote_control(%struct.firedtv*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @fdtv_unregister_rc(%struct.firedtv*) #2

declare dso_local i32 @kfree(%struct.firedtv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
