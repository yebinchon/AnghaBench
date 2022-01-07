; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_release_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_release_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_release_eeprom\00", align 1
@EECD = common dso_local global i32 0, align 4
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i32 0, align 4
@E1000_EECD_SK = common dso_local global i32 0, align 4
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_EECD_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_release_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_release_eeprom(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @EECD, align 4
  %6 = call i32 @er32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_eeprom_spi, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32, i32* @E1000_EECD_CS, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @E1000_EECD_SK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @EECD, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ew32(i32 %21, i32 %22)
  %24 = call i32 (...) @E1000_WRITE_FLUSH()
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @udelay(i32 %28)
  br label %73

30:                                               ; preds = %1
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_eeprom_microwire, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %30
  %38 = load i32, i32* @E1000_EECD_CS, align 4
  %39 = load i32, i32* @E1000_EECD_DI, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @EECD, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ew32(i32 %44, i32 %45)
  %47 = load i32, i32* @E1000_EECD_SK, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @EECD, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @ew32(i32 %50, i32 %51)
  %53 = call i32 (...) @E1000_WRITE_FLUSH()
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @udelay(i32 %57)
  %59 = load i32, i32* @E1000_EECD_SK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @EECD, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @ew32(i32 %63, i32 %64)
  %66 = call i32 (...) @E1000_WRITE_FLUSH()
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @udelay(i32 %70)
  br label %72

72:                                               ; preds = %37, %30
  br label %73

73:                                               ; preds = %72, %13
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @e1000_82544, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32, i32* @E1000_EECD_REQ, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* @EECD, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @ew32(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %73
  ret void
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
