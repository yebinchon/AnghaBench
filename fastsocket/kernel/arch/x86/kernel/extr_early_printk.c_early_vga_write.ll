; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_early_printk.c_early_vga_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_early_printk.c_early_vga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32 }

@current_ypos = common dso_local global i32 0, align 4
@max_ypos = common dso_local global i32 0, align 4
@max_xpos = common dso_local global i32 0, align 4
@VGABASE = common dso_local global i64 0, align 8
@current_xpos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @early_vga_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_vga_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %11

11:                                               ; preds = %124, %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ugt i32 %18, 0
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i1 [ false, %11 ], [ %20, %17 ]
  br i1 %22, label %23, label %125

23:                                               ; preds = %21
  %24 = load i32, i32* @current_ypos, align 4
  %25 = load i32, i32* @max_ypos, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %62, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @max_ypos, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @max_xpos, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i64, i64* @VGABASE, align 8
  %39 = load i32, i32* @max_xpos, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  %44 = mul nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %38, %45
  %47 = call i32 @readw(i64 %46)
  %48 = load i64, i64* @VGABASE, align 8
  %49 = load i32, i32* @max_xpos, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = mul nsw i32 2, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %48, %55
  %57 = call i32 @writew(i32 %47, i64 %56)
  br label %58

58:                                               ; preds = %37
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %33

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %28

67:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @max_xpos, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i64, i64* @VGABASE, align 8
  %74 = load i32, i32* @max_xpos, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = mul nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %73, %80
  %82 = call i32 @writew(i32 1824, i64 %81)
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %68

86:                                               ; preds = %68
  %87 = load i32, i32* @max_ypos, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* @current_ypos, align 4
  br label %89

89:                                               ; preds = %86, %23
  %90 = load i8, i8* %7, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  store i32 0, i32* @current_xpos, align 4
  %94 = load i32, i32* @current_ypos, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @current_ypos, align 4
  br label %124

96:                                               ; preds = %89
  %97 = load i8, i8* %7, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 13
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load i8, i8* %7, align 1
  %102 = sext i8 %101 to i16
  %103 = zext i16 %102 to i32
  %104 = or i32 1792, %103
  %105 = load i64, i64* @VGABASE, align 8
  %106 = load i32, i32* @max_xpos, align 4
  %107 = load i32, i32* @current_ypos, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* @current_xpos, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @current_xpos, align 4
  %111 = add nsw i32 %108, %109
  %112 = mul nsw i32 2, %111
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %105, %113
  %115 = call i32 @writew(i32 %104, i64 %114)
  %116 = load i32, i32* @current_xpos, align 4
  %117 = load i32, i32* @max_xpos, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %100
  store i32 0, i32* @current_xpos, align 4
  %120 = load i32, i32* @current_ypos, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @current_ypos, align 4
  br label %122

122:                                              ; preds = %119, %100
  br label %123

123:                                              ; preds = %122, %96
  br label %124

124:                                              ; preds = %123, %93
  br label %11

125:                                              ; preds = %21
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
