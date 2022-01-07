; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_eeprom_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_eeprom_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i32, i32* }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EEPROM corrupted\0A\00", align 1
@eeprom_bad_csum_allow = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_eeprom_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_eeprom_load(%struct.nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %3, align 8
  store i32 8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.nic*, %struct.nic** %3, align 8
  %8 = call i32 @e100_eeprom_read(%struct.nic* %7, i32* %5, i32 0)
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 1, %9
  %11 = load %struct.nic*, %struct.nic** %3, align 8
  %12 = getelementptr inbounds %struct.nic, %struct.nic* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %47, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.nic*, %struct.nic** %3, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.nic*, %struct.nic** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @e100_eeprom_read(%struct.nic* %20, i32* %5, i32 %21)
  %23 = load %struct.nic*, %struct.nic** %3, align 8
  %24 = getelementptr inbounds %struct.nic, %struct.nic* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nic*, %struct.nic** %3, align 8
  %31 = getelementptr inbounds %struct.nic, %struct.nic* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %19
  %36 = load %struct.nic*, %struct.nic** %3, align 8
  %37 = getelementptr inbounds %struct.nic, %struct.nic* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %35, %19
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 47802, %51
  %53 = call i32 @cpu_to_le16(i32 %52)
  %54 = load %struct.nic*, %struct.nic** %3, align 8
  %55 = getelementptr inbounds %struct.nic, %struct.nic* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.nic*, %struct.nic** %3, align 8
  %58 = getelementptr inbounds %struct.nic, %struct.nic* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %53, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %50
  %66 = load %struct.nic*, %struct.nic** %3, align 8
  %67 = load i32, i32* @probe, align 4
  %68 = load %struct.nic*, %struct.nic** %3, align 8
  %69 = getelementptr inbounds %struct.nic, %struct.nic* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netif_err(%struct.nic* %66, i32 %67, i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @eeprom_bad_csum_allow, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %79

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %50
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @e100_eeprom_read(%struct.nic*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @netif_err(%struct.nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
