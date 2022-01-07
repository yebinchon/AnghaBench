; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_table_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_table_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_tab = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_tab*, i32, i32)* @stb0899_table_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_table_lookup(%struct.stb0899_tab* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stb0899_tab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stb0899_tab* %0, %struct.stb0899_tab** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %11, i64 %13
  %15 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %10, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %19, i64 %21
  %23 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  br label %119

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %27, i64 %29
  %31 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %26, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %35, i64 %37
  %39 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %118

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %53, i64 %55
  %57 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %52, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %62, i64 %64
  %66 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %61, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %5, align 4
  br label %73

71:                                               ; preds = %60, %47
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %42

74:                                               ; preds = %42
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %76, i64 %78
  %80 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %75, %81
  %83 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %83, i64 %85
  %87 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %89, i64 %91
  %93 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %88, %94
  %96 = mul nsw i32 %82, %95
  %97 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %97, i64 %99
  %101 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %103, i64 %105
  %107 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %102, %108
  %110 = sdiv i32 %96, %109
  %111 = load %struct.stb0899_tab*, %struct.stb0899_tab** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %111, i64 %113
  %115 = getelementptr inbounds %struct.stb0899_tab, %struct.stb0899_tab* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %110, %116
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %74, %34
  br label %119

119:                                              ; preds = %118, %18
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
