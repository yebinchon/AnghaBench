; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_wide_nego.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_wide_nego.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_tcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sym_ccb = type { i64, i32 }

@HS_PRT = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i64 0, align 8
@HS_BUSY = common dso_local global i64 0, align 8
@NS_WIDE = common dso_local global i64 0, align 8
@wdtr_resp = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sync msgout\00", align 1
@NS_SYNC = common dso_local global i64 0, align 8
@sdtr_resp = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*)* @sym_wide_nego to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_wide_nego(%struct.sym_hcb* %0, %struct.sym_tcb* %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.sym_tcb*, align 8
  %6 = alloca %struct.sym_ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.sym_tcb* %1, %struct.sym_tcb** %5, align 8
  store %struct.sym_ccb* %2, %struct.sym_ccb** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %10 = load i32, i32* @HS_PRT, align 4
  %11 = call i64 @INB(%struct.sym_hcb* %9, i32 %10)
  %12 = load i64, i64* @HS_NEGOTIATE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %16 = load i32, i32* @HS_PRT, align 4
  %17 = load i64, i64* @HS_BUSY, align 8
  %18 = call i32 @OUTB(%struct.sym_hcb* %15, i32 %16, i64 %17)
  %19 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %20 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %25 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NS_WIDE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %104

30:                                               ; preds = %23, %14
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %35 = call i32 @sym_wide_nego_check(%struct.sym_hcb* %32, i32 %33, %struct.sym_ccb* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %104

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i64, i64* @NS_WIDE, align 8
  %44 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %45 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %47 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %48 = load i32, i32* @wdtr_resp, align 4
  %49 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %47, i32 %48)
  %50 = call i32 @OUTL_DSP(%struct.sym_hcb* %46, i32 %49)
  br label %103

51:                                               ; preds = %39
  %52 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %53 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %59 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %62 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sym_tcb*, %struct.sym_tcb** %5, align 8
  %66 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @spi_populate_sync_msg(i32 %60, i32 %64, i64 %68)
  %70 = load i32, i32* @DEBUG_FLAGS, align 4
  %71 = load i32, i32* @DEBUG_NEGO, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %57
  %75 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %76 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %77 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %80 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sym_print_nego_msg(%struct.sym_hcb* %75, i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %74, %57
  %84 = load i64, i64* @NS_SYNC, align 8
  %85 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %86 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %88 = load i32, i32* @HS_PRT, align 4
  %89 = load i64, i64* @HS_NEGOTIATE, align 8
  %90 = call i32 @OUTB(%struct.sym_hcb* %87, i32 %88, i64 %89)
  %91 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %92 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %93 = load i32, i32* @sdtr_resp, align 4
  %94 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %92, i32 %93)
  %95 = call i32 @OUTL_DSP(%struct.sym_hcb* %91, i32 %94)
  br label %110

96:                                               ; preds = %51
  %97 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %98 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %99 = load i32, i32* @clrack, align 4
  %100 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %98, i32 %99)
  %101 = call i32 @OUTL_DSP(%struct.sym_hcb* %97, i32 %100)
  br label %102

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %42
  br label %110

104:                                              ; preds = %38, %29
  %105 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %106 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %107 = load i32, i32* @msg_bad, align 4
  %108 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %106, i32 %107)
  %109 = call i32 @OUTL_DSP(%struct.sym_hcb* %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %103, %83
  ret void
}

declare dso_local i64 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i64) #1

declare dso_local i32 @sym_wide_nego_check(%struct.sym_hcb*, i32, %struct.sym_ccb*) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @spi_populate_sync_msg(i32, i32, i64) #1

declare dso_local i32 @sym_print_nego_msg(%struct.sym_hcb*, i32, i8*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
