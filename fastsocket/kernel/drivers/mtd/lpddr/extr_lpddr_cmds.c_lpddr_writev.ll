; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_writev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.lpddr_private* }
%struct.lpddr_private = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvec = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.kvec*, i64, i32, i64*)* @lpddr_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr_writev(%struct.mtd_info* %0, %struct.kvec* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.map_info*, align 8
  %13 = alloca %struct.lpddr_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.kvec* %1, %struct.kvec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load %struct.map_info*, %struct.map_info** %23, align 8
  store %struct.map_info* %24, %struct.map_info** %12, align 8
  %25 = load %struct.map_info*, %struct.map_info** %12, align 8
  %26 = getelementptr inbounds %struct.map_info, %struct.map_info* %25, i32 0, i32 0
  %27 = load %struct.lpddr_private*, %struct.lpddr_private** %26, align 8
  store %struct.lpddr_private* %27, %struct.lpddr_private** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.lpddr_private*, %struct.lpddr_private** %13, align 8
  %29 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %18, align 8
  br label %34

34:                                               ; preds = %46, %5
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.kvec*, %struct.kvec** %8, align 8
  %40 = load i64, i64* %18, align 8
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %39, i64 %40
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %20, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %20, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %18, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %18, align 8
  br label %34

49:                                               ; preds = %34
  %50 = load i64*, i64** %11, align 8
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %20, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %113

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.lpddr_private*, %struct.lpddr_private** %13, align 8
  %57 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %55, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %62

62:                                               ; preds = %109, %54
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %16, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = and i64 %65, %68
  %70 = sub i64 %64, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %20, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i64, i64* %20, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %21, align 4
  br label %79

79:                                               ; preds = %76, %62
  %80 = load %struct.map_info*, %struct.map_info** %12, align 8
  %81 = load %struct.lpddr_private*, %struct.lpddr_private** %13, align 8
  %82 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i64, i64* %16, align 8
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @do_write_buffer(%struct.map_info* %80, i32* %86, i64 %87, %struct.kvec** %8, i64* %17, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %6, align 4
  br label %113

94:                                               ; preds = %79
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %16, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %16, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64*, i64** %11, align 8
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %100
  store i64 %103, i64* %101, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %20, align 8
  %107 = sub i64 %106, %105
  store i64 %107, i64* %20, align 8
  %108 = call i32 (...) @cond_resched()
  br label %109

109:                                              ; preds = %94
  %110 = load i64, i64* %20, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %62, label %112

112:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %92, %53
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @do_write_buffer(%struct.map_info*, i32*, i64, %struct.kvec**, i64*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
