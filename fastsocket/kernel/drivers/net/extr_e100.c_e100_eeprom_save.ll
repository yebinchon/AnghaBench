; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_eeprom_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_eeprom_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, i32, i32)* @e100_eeprom_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_eeprom_save(%struct.nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 8, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.nic*, %struct.nic** %5, align 8
  %12 = call i32 @e100_eeprom_read(%struct.nic* %11, i32* %9, i32 0)
  %13 = load i32, i32* %9, align 4
  %14 = shl i32 1, %13
  %15 = load %struct.nic*, %struct.nic** %5, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = load %struct.nic*, %struct.nic** %5, align 8
  %21 = getelementptr inbounds %struct.nic, %struct.nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %102

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %47, %27
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.nic*, %struct.nic** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.nic*, %struct.nic** %5, align 8
  %40 = getelementptr inbounds %struct.nic, %struct.nic* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @e100_eeprom_write(%struct.nic* %36, i32 %37, i32 %38, i32 %45)
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %29

50:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.nic*, %struct.nic** %5, align 8
  %54 = getelementptr inbounds %struct.nic, %struct.nic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.nic*, %struct.nic** %5, align 8
  %60 = getelementptr inbounds %struct.nic, %struct.nic* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 47802, %73
  %75 = call i32 @cpu_to_le16(i32 %74)
  %76 = load %struct.nic*, %struct.nic** %5, align 8
  %77 = getelementptr inbounds %struct.nic, %struct.nic* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.nic*, %struct.nic** %5, align 8
  %80 = getelementptr inbounds %struct.nic, %struct.nic* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  store i32 %75, i32* %84, align 4
  %85 = load %struct.nic*, %struct.nic** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.nic*, %struct.nic** %5, align 8
  %88 = getelementptr inbounds %struct.nic, %struct.nic* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.nic*, %struct.nic** %5, align 8
  %92 = getelementptr inbounds %struct.nic, %struct.nic* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.nic*, %struct.nic** %5, align 8
  %95 = getelementptr inbounds %struct.nic, %struct.nic* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @e100_eeprom_write(%struct.nic* %85, i32 %86, i32 %90, i32 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %72, %24
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @e100_eeprom_read(%struct.nic*, i32*, i32) #1

declare dso_local i32 @e100_eeprom_write(%struct.nic*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
