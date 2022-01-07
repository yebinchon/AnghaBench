; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tgr192.c_tgr192_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tgr192.c_tgr192_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.tgr192_ctx = type { i32, i32, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @tgr192_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgr192_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tgr192_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %13 = call %struct.tgr192_ctx* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.tgr192_ctx* %13, %struct.tgr192_ctx** %5, align 8
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %16 = call i32 @tgr192_update(%struct.shash_desc* %15, i32* null, i32 0)
  store i32 0, i32* %10, align 4
  %17 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 %20, 6
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 26
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %27
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %45, 3
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 29
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 56
  br i1 %60, label %61, label %87

61:                                               ; preds = %52
  %62 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %76, %61
  %72 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 56
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  store i32 0, i32* %85, align 4
  br label %71

86:                                               ; preds = %71
  br label %119

87:                                               ; preds = %52
  %88 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %89 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %102, %87
  %98 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 64
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %107 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  store i32 0, i32* %111, align 4
  br label %97

112:                                              ; preds = %97
  %113 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %114 = call i32 @tgr192_update(%struct.shash_desc* %113, i32* null, i32 0)
  %115 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %116 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @memset(i32* %117, i32 0, i32 56)
  br label %119

119:                                              ; preds = %112, %86
  %120 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %121 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 56
  store i32* %123, i32** %8, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @cpu_to_le32(i32 %124)
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @cpu_to_le32(i32 %128)
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %133 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %134 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @tgr192_transform(%struct.tgr192_ctx* %132, i32* %135)
  %137 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %7, align 8
  %140 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %141 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @cpu_to_be64(i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %143, i32* %145, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %143, i32* %147, align 4
  %148 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %149 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @cpu_to_be64(i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 %151, i32* %153, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %151, i32* %155, align 4
  %156 = load %struct.tgr192_ctx*, %struct.tgr192_ctx** %5, align 8
  %157 = getelementptr inbounds %struct.tgr192_ctx, %struct.tgr192_ctx* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @cpu_to_be64(i32 %158)
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  store i32 %159, i32* %163, align 4
  ret i32 0
}

declare dso_local %struct.tgr192_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @tgr192_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @tgr192_transform(%struct.tgr192_ctx*, i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
