; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i64, {}* }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @concat_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mtd_concat*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mtd_info*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %19 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %18)
  store %struct.mtd_concat* %19, %struct.mtd_concat** %12, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MTD_WRITEABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @EROFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %120

31:                                               ; preds = %5
  %32 = load i64*, i64** %10, align 8
  store i64 0, i64* %32, align 8
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %115, %31
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.mtd_concat*, %struct.mtd_concat** %12, align 8
  %36 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %118

39:                                               ; preds = %33
  %40 = load %struct.mtd_concat*, %struct.mtd_concat** %12, align 8
  %41 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %40, i32 0, i32 1
  %42 = load %struct.mtd_info**, %struct.mtd_info*** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %42, i64 %44
  %46 = load %struct.mtd_info*, %struct.mtd_info** %45, align 8
  store %struct.mtd_info* %46, %struct.mtd_info** %15, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %39
  store i64 0, i64* %16, align 8
  %53 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %115

58:                                               ; preds = %39
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ugt i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = sub nsw i64 %69, %70
  store i64 %71, i64* %16, align 8
  br label %74

72:                                               ; preds = %58
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %16, align 8
  br label %74

74:                                               ; preds = %72, %66
  %75 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MTD_WRITEABLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @EROFS, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %13, align 4
  br label %94

84:                                               ; preds = %74
  %85 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %86 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %85, i32 0, i32 2
  %87 = bitcast {}** %86 to i32 (%struct.mtd_info*, i64, i64, i64*, i32*)**
  %88 = load i32 (%struct.mtd_info*, i64, i64, i64*, i32*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i32*)** %87, align 8
  %89 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 %88(%struct.mtd_info* %89, i64 %90, i64 %91, i64* %17, i32* %92)
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %84, %81
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %118

98:                                               ; preds = %94
  %99 = load i64, i64* %17, align 8
  %100 = load i64*, i64** %10, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %99
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %9, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %118

109:                                              ; preds = %98
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  %112 = load i64, i64* %16, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %112
  store i32* %114, i32** %11, align 8
  store i64 0, i64* %8, align 8
  br label %115

115:                                              ; preds = %109, %52
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %33

118:                                              ; preds = %108, %97, %33
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %28
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
