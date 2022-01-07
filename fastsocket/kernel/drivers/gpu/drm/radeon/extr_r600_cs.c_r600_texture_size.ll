; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_texture_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_texture_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*)* @r600_texture_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_texture_size(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %15, align 4
  %40 = sub i32 %38, %39
  %41 = add i32 %40, 1
  store i32 %41, i32* %37, align 4
  %42 = load i32*, i32** %25, align 8
  store i32 -1, i32* %42, align 4
  %43 = load i32, i32* %21, align 4
  %44 = call i32 @r600_fmt_get_blocksize(i32 %43)
  store i32 %44, i32* %34, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @r600_mip_minify(i32 %45, i32 0)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @r600_mip_minify(i32 %47, i32 0)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @r600_mip_minify(i32 %49, i32 0)
  store i32 %50, i32* %19, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %29, align 4
  br label %52

52:                                               ; preds = %115, %13
  %53 = load i32, i32* %28, align 4
  %54 = load i32, i32* %37, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %120

56:                                               ; preds = %52
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %28, align 4
  %59 = call i32 @r600_mip_minify(i32 %57, i32 %58)
  store i32 %59, i32* %30, align 4
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %30, align 4
  %62 = call i32 @r600_fmt_get_nblocksx(i32 %60, i32 %61)
  store i32 %62, i32* %35, align 4
  %63 = load i32, i32* %35, align 4
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @round_up(i32 %63, i32 %64)
  store i32 %65, i32* %35, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %28, align 4
  %68 = call i32 @r600_mip_minify(i32 %66, i32 %67)
  store i32 %68, i32* %31, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %31, align 4
  %71 = call i32 @r600_fmt_get_nblocksy(i32 %69, i32 %70)
  store i32 %71, i32* %36, align 4
  %72 = load i32, i32* %36, align 4
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @round_up(i32 %72, i32 %73)
  store i32 %74, i32* %36, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %28, align 4
  %77 = call i32 @r600_mip_minify(i32 %75, i32 %76)
  store i32 %77, i32* %32, align 4
  %78 = load i32, i32* %35, align 4
  %79 = load i32, i32* %36, align 4
  %80 = mul i32 %78, %79
  %81 = load i32, i32* %34, align 4
  %82 = mul i32 %80, %81
  %83 = load i32, i32* %20, align 4
  %84 = mul i32 %82, %83
  store i32 %84, i32* %33, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %56
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %33, align 4
  %90 = mul i32 %89, %88
  store i32 %90, i32* %33, align 4
  br label %95

91:                                               ; preds = %56
  %92 = load i32, i32* %32, align 4
  %93 = load i32, i32* %33, align 4
  %94 = mul i32 %93, %92
  store i32 %94, i32* %33, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %28, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %33, align 4
  %100 = load i32*, i32** %25, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %28, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %28, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* %24, align 4
  %110 = call i32 @round_up(i32 %108, i32 %109)
  store i32 %110, i32* %27, align 4
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* %33, align 4
  %113 = load i32, i32* %27, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %27, align 4
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %28, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %28, align 4
  %118 = load i32, i32* %29, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %29, align 4
  br label %52

120:                                              ; preds = %52
  %121 = load i32, i32* %27, align 4
  %122 = load i32*, i32** %26, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32*, i32** %25, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %26, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load i32*, i32** %25, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %26, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %129
  ret void
}

declare dso_local i32 @r600_fmt_get_blocksize(i32) #1

declare dso_local i32 @r600_mip_minify(i32, i32) #1

declare dso_local i32 @r600_fmt_get_nblocksx(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @r600_fmt_get_nblocksy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
