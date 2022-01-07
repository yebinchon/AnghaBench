; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_fix_zero_bug_scc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_fix_zero_bug_scc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32 }

@CHRA = common dso_local global i32 0, align 4
@CHRB = common dso_local global i32 0, align 4
@NV = common dso_local global i32 0, align 4
@X1CLK = common dso_local global i32 0, align 4
@MONSYNC = common dso_local global i32 0, align 4
@Rx8 = common dso_local global i32 0, align 4
@Tx8 = common dso_local global i32 0, align 4
@RTS = common dso_local global i32 0, align 4
@RCBR = common dso_local global i32 0, align 4
@TCBR = common dso_local global i32 0, align 4
@LOOPBAK = common dso_local global i32 0, align 4
@BRSRC = common dso_local global i32 0, align 4
@BRENAB = common dso_local global i32 0, align 4
@RxENABLE = common dso_local global i32 0, align 4
@RES_EXT_INT = common dso_local global i32 0, align 4
@X16CLK = common dso_local global i32 0, align 4
@SB_MASK = common dso_local global i32 0, align 4
@Rx_CH_AV = common dso_local global i32 0, align 4
@ERR_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*)* @pmz_fix_zero_bug_scc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_fix_zero_bug_scc(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.uart_pmac_port*, align 8
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %2, align 8
  %3 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %4 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %5 = call i64 @ZS_IS_CHANNEL_A(%struct.uart_pmac_port* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @CHRA, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @CHRB, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = call i32 @write_zsreg(%struct.uart_pmac_port* %3, i32 9, i32 %12)
  %14 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %15 = call i32 @zssync(%struct.uart_pmac_port* %14)
  %16 = call i32 @udelay(i32 10)
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %18 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %19 = call i64 @ZS_IS_CHANNEL_A(%struct.uart_pmac_port* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @CHRA, align 4
  br label %25

23:                                               ; preds = %11
  %24 = load i32, i32* @CHRB, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load i32, i32* @NV, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @write_zsreg(%struct.uart_pmac_port* %17, i32 9, i32 %28)
  %30 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %31 = call i32 @zssync(%struct.uart_pmac_port* %30)
  %32 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %33 = load i32, i32* @X1CLK, align 4
  %34 = load i32, i32* @MONSYNC, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @write_zsreg(%struct.uart_pmac_port* %32, i32 4, i32 %35)
  %37 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %38 = load i32, i32* @Rx8, align 4
  %39 = call i32 @write_zsreg(%struct.uart_pmac_port* %37, i32 3, i32 %38)
  %40 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %41 = load i32, i32* @Tx8, align 4
  %42 = load i32, i32* @RTS, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @write_zsreg(%struct.uart_pmac_port* %40, i32 5, i32 %43)
  %45 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %46 = load i32, i32* @NV, align 4
  %47 = call i32 @write_zsreg(%struct.uart_pmac_port* %45, i32 9, i32 %46)
  %48 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %49 = load i32, i32* @RCBR, align 4
  %50 = load i32, i32* @TCBR, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @write_zsreg(%struct.uart_pmac_port* %48, i32 11, i32 %51)
  %53 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %54 = call i32 @write_zsreg(%struct.uart_pmac_port* %53, i32 12, i32 0)
  %55 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %56 = call i32 @write_zsreg(%struct.uart_pmac_port* %55, i32 13, i32 0)
  %57 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %58 = load i32, i32* @LOOPBAK, align 4
  %59 = load i32, i32* @BRSRC, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @write_zsreg(%struct.uart_pmac_port* %57, i32 14, i32 %60)
  %62 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %63 = load i32, i32* @LOOPBAK, align 4
  %64 = load i32, i32* @BRSRC, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @BRENAB, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @write_zsreg(%struct.uart_pmac_port* %62, i32 14, i32 %67)
  %69 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %70 = load i32, i32* @Rx8, align 4
  %71 = load i32, i32* @RxENABLE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @write_zsreg(%struct.uart_pmac_port* %69, i32 3, i32 %72)
  %74 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %75 = load i32, i32* @RES_EXT_INT, align 4
  %76 = call i32 @write_zsreg(%struct.uart_pmac_port* %74, i32 0, i32 %75)
  %77 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %78 = load i32, i32* @RES_EXT_INT, align 4
  %79 = call i32 @write_zsreg(%struct.uart_pmac_port* %77, i32 0, i32 %78)
  %80 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %81 = load i32, i32* @RES_EXT_INT, align 4
  %82 = call i32 @write_zsreg(%struct.uart_pmac_port* %80, i32 0, i32 %81)
  %83 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %84 = load i32, i32* @NV, align 4
  %85 = call i32 @write_zsreg(%struct.uart_pmac_port* %83, i32 9, i32 %84)
  %86 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %87 = load i32, i32* @X16CLK, align 4
  %88 = load i32, i32* @SB_MASK, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @write_zsreg(%struct.uart_pmac_port* %86, i32 4, i32 %89)
  %91 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %92 = load i32, i32* @Rx8, align 4
  %93 = call i32 @write_zsreg(%struct.uart_pmac_port* %91, i32 3, i32 %92)
  br label %94

94:                                               ; preds = %100, %25
  %95 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %96 = call i32 @read_zsreg(%struct.uart_pmac_port* %95, i32 0)
  %97 = load i32, i32* @Rx_CH_AV, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %102 = call i32 @read_zsreg(%struct.uart_pmac_port* %101, i32 8)
  %103 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %104 = load i32, i32* @RES_EXT_INT, align 4
  %105 = call i32 @write_zsreg(%struct.uart_pmac_port* %103, i32 0, i32 %104)
  %106 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %107 = load i32, i32* @ERR_RES, align 4
  %108 = call i32 @write_zsreg(%struct.uart_pmac_port* %106, i32 0, i32 %107)
  br label %94

109:                                              ; preds = %94
  ret void
}

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i32, i32) #1

declare dso_local i64 @ZS_IS_CHANNEL_A(%struct.uart_pmac_port*) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_zsreg(%struct.uart_pmac_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
