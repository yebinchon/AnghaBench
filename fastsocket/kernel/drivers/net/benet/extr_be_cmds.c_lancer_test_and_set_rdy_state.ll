; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_lancer_test_and_set_rdy_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_lancer_test_and_set_rdy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@SLIPORT_STATUS_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_STATUS_ERR_MASK = common dso_local global i32 0, align 4
@SLIPORT_STATUS_RN_MASK = common dso_local global i32 0, align 4
@SLI_PORT_CONTROL_IP_MASK = common dso_local global i32 0, align 4
@SLIPORT_CONTROL_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lancer_test_and_set_rdy_state(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = call i32 @lancer_provisioning_error(%struct.be_adapter* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %18 = call i32 @lancer_wait_ready(%struct.be_adapter* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %76, label %21

21:                                               ; preds = %16
  %22 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SLIPORT_STATUS_OFFSET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ioread32(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SLIPORT_STATUS_RN_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load i32, i32* @SLI_PORT_CONTROL_IP_MASK, align 4
  %41 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SLIPORT_CONTROL_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @iowrite32(i32 %40, i64 %45)
  %47 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %48 = call i32 @lancer_wait_ready(%struct.be_adapter* %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SLIPORT_STATUS_OFFSET, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @ioread32(i64 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %56 = load i32, i32* @SLIPORT_STATUS_RN_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %39
  store i32 -1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %75

67:                                               ; preds = %36, %21
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67
  store i32 -1, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %75

75:                                               ; preds = %74, %66
  br label %76

76:                                               ; preds = %75, %16
  %77 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %78 = call i32 @lancer_provisioning_error(%struct.be_adapter* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @lancer_provisioning_error(%struct.be_adapter*) #1

declare dso_local i32 @lancer_wait_ready(%struct.be_adapter*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
