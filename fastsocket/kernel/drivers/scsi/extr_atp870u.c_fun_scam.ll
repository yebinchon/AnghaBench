; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_fun_scam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_atp870u.c_fun_scam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_unit = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.atp_unit*, i16*)* @fun_scam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fun_scam(%struct.atp_unit* %0, i16* %1) #0 {
  %3 = alloca %struct.atp_unit*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  store %struct.atp_unit* %0, %struct.atp_unit** %3, align 8
  store i16* %1, i16** %4, align 8
  %9 = load %struct.atp_unit*, %struct.atp_unit** %3, align 8
  %10 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 28
  store i32 %14, i32* %5, align 4
  %15 = load i16*, i16** %4, align 8
  %16 = load i16, i16* %15, align 2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @outw(i16 zeroext %16, i32 %17)
  br label %19

19:                                               ; preds = %36, %2
  store i16 0, i16* %6, align 2
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @inw(i32 %25)
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %7, align 2
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = ashr i32 %29, 8
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %8, align 1
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 32768
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %19

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i16, i16* %6, align 2
  %40 = add i16 %39, 1
  store i16 %40, i16* %6, align 2
  br label %20

41:                                               ; preds = %20
  %42 = load i16*, i16** %4, align 8
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %44, 16384
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %42, align 2
  %47 = load i16*, i16** %4, align 8
  %48 = load i16, i16* %47, align 2
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @outw(i16 zeroext %48, i32 %49)
  %51 = load i16*, i16** %4, align 8
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 57343
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %51, align 2
  %56 = load i16*, i16** %4, align 8
  %57 = load i16, i16* %56, align 2
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @outw(i16 zeroext %57, i32 %58)
  br label %60

60:                                               ; preds = %70, %41
  store i16 0, i16* %6, align 2
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i16, i16* %6, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp slt i32 %63, 10
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @inw(i32 %66)
  %68 = and i32 %67, 8192
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %60

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load i16, i16* %6, align 2
  %74 = add i16 %73, 1
  store i16 %74, i16* %6, align 2
  br label %61

75:                                               ; preds = %61
  %76 = load i16*, i16** %4, align 8
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = or i32 %78, 32768
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %76, align 2
  %81 = load i16*, i16** %4, align 8
  %82 = load i16, i16* %81, align 2
  %83 = zext i16 %82 to i32
  %84 = and i32 %83, 57599
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %81, align 2
  %86 = load i16*, i16** %4, align 8
  %87 = load i16, i16* %86, align 2
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @outw(i16 zeroext %87, i32 %88)
  %90 = load i16*, i16** %4, align 8
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %92, 49151
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %90, align 2
  %95 = load i16*, i16** %4, align 8
  %96 = load i16, i16* %95, align 2
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @outw(i16 zeroext %96, i32 %97)
  br label %99

99:                                               ; preds = %109, %75
  store i16 0, i16* %6, align 2
  br label %100

100:                                              ; preds = %111, %99
  %101 = load i16, i16* %6, align 2
  %102 = zext i16 %101 to i32
  %103 = icmp slt i32 %102, 10
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @inw(i32 %105)
  %107 = and i32 %106, 16384
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %99

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110
  %112 = load i16, i16* %6, align 2
  %113 = add i16 %112, 1
  store i16 %113, i16* %6, align 2
  br label %100

114:                                              ; preds = %100
  %115 = load i8, i8* %8, align 1
  ret i8 %115
}

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
