; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_sata_link_debounce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_sata_link_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SCR_STATUS = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_link_debounce(%struct.ata_link* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @ata_deadline(i64 %21, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @time_before(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %30, %3
  %33 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %34 = load i32, i32* @SCR_STATUS, align 4
  %35 = call i32 @sata_scr_read(%struct.ata_link* %33, i32 %34, i32* %13)
  store i32 %35, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %4, align 4
  br label %91

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 15
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* @jiffies, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %39, %70, %79, %90
  %45 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %46 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @ata_msleep(i32 %47, i64 %48)
  %50 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %51 = load i32, i32* @SCR_STATUS, align 4
  %52 = call i32 @sata_scr_read(%struct.ata_link* %50, i32 %51, i32* %13)
  store i32 %52, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %44
  %57 = load i32, i32* %13, align 4
  %58 = and i32 %57, 15
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @time_before(i64 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %44

71:                                               ; preds = %65, %62
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @ata_deadline(i64 %73, i64 %74)
  %76 = call i64 @time_after(i64 %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %91

79:                                               ; preds = %71
  br label %44

80:                                               ; preds = %56
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i64, i64* @jiffies, align 8
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i64 @time_after(i64 %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EPIPE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %91

90:                                               ; preds = %80
  br label %44

91:                                               ; preds = %87, %78, %54, %37
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @ata_deadline(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @ata_msleep(i32, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
