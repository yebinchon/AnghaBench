; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_handle_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_handle_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.net_device* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.net_device = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@SET_PROMISC_MODE_ON = common dso_local global i64 0, align 8
@SET_PROMISC_MODE_OFF = common dso_local global i64 0, align 8
@IPA_SETADP_SET_PROMISC_MODE = common dso_local global i32 0, align 4
@IPA_SETADP_SET_DIAG_ASSIST = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"+promisc\00", align 1
@QETH_DIAGS_CMD_TRACE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"-promisc\00", align 1
@QETH_DIAGS_CMD_TRACE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l3_handle_promisc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_handle_promisc_mode(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 2
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SET_PROMISC_MODE_ON, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_PROMISC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SET_PROMISC_MODE_OFF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %13
  br label %82

35:                                               ; preds = %27, %20
  %36 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %43 = load i32, i32* @IPA_SETADP_SET_PROMISC_MODE, align 4
  %44 = call i64 @qeth_adp_supported(%struct.qeth_card* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %48 = call i32 @qeth_setadp_promisc_mode(%struct.qeth_card* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %82

50:                                               ; preds = %35
  %51 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %58 = load i32, i32* @IPA_SETADP_SET_DIAG_ASSIST, align 4
  %59 = call i64 @qeth_adp_supported(%struct.qeth_card* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IFF_PROMISC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @TRACE, align 4
  %70 = call i32 @QETH_DBF_TEXT(i32 %69, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %72 = load i32, i32* @QETH_DIAGS_CMD_TRACE_ENABLE, align 4
  %73 = call i32 @qeth_diags_trace(%struct.qeth_card* %71, i32 %72)
  br label %80

74:                                               ; preds = %61
  %75 = load i32, i32* @TRACE, align 4
  %76 = call i32 @QETH_DBF_TEXT(i32 %75, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %78 = load i32, i32* @QETH_DIAGS_CMD_TRACE_DISABLE, align 4
  %79 = call i32 @qeth_diags_trace(%struct.qeth_card* %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %68
  br label %81

81:                                               ; preds = %80, %56, %50
  br label %82

82:                                               ; preds = %34, %81, %49
  ret void
}

declare dso_local i64 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_setadp_promisc_mode(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_diags_trace(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
