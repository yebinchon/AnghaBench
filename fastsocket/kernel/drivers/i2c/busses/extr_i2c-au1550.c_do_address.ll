; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_do_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_do_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PSC_SMBEVNT_ALLCLR = common dso_local global i32 0, align 4
@PSC_SMBSTAT_TE = common dso_local global i32 0, align 4
@PSC_SMBSTAT_RE = common dso_local global i32 0, align 4
@PSC_SMBPCR_DC = common dso_local global i32 0, align 4
@PSC_SMBTXRX_STP = common dso_local global i32 0, align 4
@PSC_SMBPCR_MS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_au1550_data*, i32, i32, i32)* @do_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_address(%struct.i2c_au1550_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_au1550_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %13 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %10, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load volatile i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @PSC_SMBEVNT_ALLCLR, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store volatile i32 %19, i32* %21, align 4
  %22 = call i32 (...) @au_sync()
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @PSC_SMBSTAT_TE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @PSC_SMBSTAT_RE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %27, %4
  %33 = load i32, i32* @PSC_SMBPCR_DC, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store volatile i32 %33, i32* %35, align 4
  %36 = call i32 (...) @au_sync()
  br label %37

37:                                               ; preds = %42, %32
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load volatile i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = call i32 (...) @au_sync()
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @PSC_SMBPCR_DC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %37, label %47

47:                                               ; preds = %42
  %48 = call i32 @udelay(i32 50)
  br label %49

49:                                               ; preds = %47, %27
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @PSC_SMBTXRX_STP, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store volatile i32 %65, i32* %67, align 4
  %68 = call i32 (...) @au_sync()
  %69 = load i32, i32* @PSC_SMBPCR_MS, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store volatile i32 %69, i32* %71, align 4
  %72 = call i32 (...) @au_sync()
  %73 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %74 = call i64 @wait_ack(%struct.i2c_au1550_data* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %88

79:                                               ; preds = %64
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %6, align 8
  %84 = call i32 @wait_master_done(%struct.i2c_au1550_data* %83)
  br label %86

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %76
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @wait_ack(%struct.i2c_au1550_data*) #1

declare dso_local i32 @wait_master_done(%struct.i2c_au1550_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
