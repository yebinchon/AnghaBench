; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_i2c_au1550_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_i2c_au1550_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@PSC_CTRL_DISABLE = common dso_local global i32 0, align 4
@PSC_SEL_PS_SMBUSMODE = common dso_local global i32 0, align 4
@PSC_CTRL_ENABLE = common dso_local global i32 0, align 4
@PSC_SMBSTAT_SR = common dso_local global i32 0, align 4
@PSC_SMBCFG_RT_FIFO8 = common dso_local global i32 0, align 4
@PSC_SMBCFG_TT_FIFO8 = common dso_local global i32 0, align 4
@PSC_SMBCFG_DD_DISABLE = common dso_local global i32 0, align 4
@PSC_SMBCFG_DIV8 = common dso_local global i32 0, align 4
@PSC_SMBMSK_ALLMASK = common dso_local global i32 0, align 4
@PSC_SMBCFG_DE_ENABLE = common dso_local global i32 0, align 4
@PSC_CTRL_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_au1550_data*)* @i2c_au1550_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_au1550_setup(%struct.i2c_au1550_data* %0) #0 {
  %2 = alloca %struct.i2c_au1550_data*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %2, align 8
  %5 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  %9 = load i32, i32* @PSC_CTRL_DISABLE, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store volatile i32 %9, i32* %11, align 4
  %12 = call i32 (...) @au_sync()
  %13 = load i32, i32* @PSC_SEL_PS_SMBUSMODE, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store volatile i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store volatile i32 0, i32* %17, align 4
  %18 = call i32 (...) @au_sync()
  %19 = load i32, i32* @PSC_CTRL_ENABLE, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store volatile i32 %19, i32* %21, align 4
  %22 = call i32 (...) @au_sync()
  br label %23

23:                                               ; preds = %28, %1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load volatile i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = call i32 (...) @au_sync()
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PSC_SMBSTAT_SR, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %23, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @PSC_SMBCFG_RT_FIFO8, align 4
  %35 = load i32, i32* @PSC_SMBCFG_TT_FIFO8, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PSC_SMBCFG_DD_DISABLE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store volatile i32 %38, i32* %40, align 4
  %41 = load i32, i32* @PSC_SMBCFG_DIV8, align 4
  %42 = call i32 @PSC_SMBCFG_SET_DIV(i32 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load volatile i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store volatile i32 %46, i32* %44, align 4
  %47 = load i32, i32* @PSC_SMBMSK_ALLMASK, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  store volatile i32 %47, i32* %49, align 4
  %50 = call i32 (...) @au_sync()
  %51 = call i32 @PSC_SMBTMR_SET_TH(i32 0)
  %52 = call i32 @PSC_SMBTMR_SET_PS(i32 15)
  %53 = or i32 %51, %52
  %54 = call i32 @PSC_SMBTMR_SET_PU(i32 15)
  %55 = or i32 %53, %54
  %56 = call i32 @PSC_SMBTMR_SET_SH(i32 15)
  %57 = or i32 %55, %56
  %58 = call i32 @PSC_SMBTMR_SET_SU(i32 15)
  %59 = or i32 %57, %58
  %60 = call i32 @PSC_SMBTMR_SET_CL(i32 15)
  %61 = or i32 %59, %60
  %62 = call i32 @PSC_SMBTMR_SET_CH(i32 15)
  %63 = or i32 %61, %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store volatile i32 %63, i32* %65, align 4
  %66 = call i32 (...) @au_sync()
  %67 = load i32, i32* @PSC_SMBCFG_DE_ENABLE, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load volatile i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store volatile i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %77, %33
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load volatile i32, i32* %74, align 4
  store i32 %75, i32* %4, align 4
  %76 = call i32 (...) @au_sync()
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @PSC_SMBSTAT_SR, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %72, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @PSC_CTRL_SUSPEND, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store volatile i32 %83, i32* %85, align 4
  %86 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @PSC_SMBCFG_SET_DIV(i32) #1

declare dso_local i32 @PSC_SMBTMR_SET_TH(i32) #1

declare dso_local i32 @PSC_SMBTMR_SET_PS(i32) #1

declare dso_local i32 @PSC_SMBTMR_SET_PU(i32) #1

declare dso_local i32 @PSC_SMBTMR_SET_SH(i32) #1

declare dso_local i32 @PSC_SMBTMR_SET_SU(i32) #1

declare dso_local i32 @PSC_SMBTMR_SET_CL(i32) #1

declare dso_local i32 @PSC_SMBTMR_SET_CH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
