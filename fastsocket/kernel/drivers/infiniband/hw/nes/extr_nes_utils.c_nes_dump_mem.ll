; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_dump_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_dump_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.nes_dump_mem.xlate = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@nes_debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Length truncated from %x to %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Address=0x%p, length=0x%x (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"   %s |  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_dump_mem(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca [20 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = bitcast [16 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.nes_dump_mem.xlate, i32 0, i32 0), i64 16, i1 false)
  %15 = load i32, i32* @nes_debug_level, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %164

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 256
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i32, i8*, ...) @nes_debug(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i32 256)
  store i32 256, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, ...) @nes_debug(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %35 = call i32 @memset(i8* %34, i32 0, i32 20)
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %37 = call i32 @memset(i8* %36, i32 0, i32 80)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %122, %28
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %125

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 %48
  store i8 32, i8* %49, align 1
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %52
  store i8 45, i8* %53, align 1
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %56
  store i8 32, i8* %57, align 1
  br label %58

58:                                               ; preds = %45, %42
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sgt i32 %66, 126
  br i1 %67, label %68, label %73

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 %71
  store i8 46, i8* %72, align 1
  br label %80

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 %78
  store i8 %75, i8* %79, align 1
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %83, 240
  %85 = ashr i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %91
  store i8 %88, i8* %92, align 1
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = and i32 %95, 15
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %102
  store i8 %99, i8* %103, align 1
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %106
  store i8 32, i8* %107, align 1
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  %110 = load i32, i32* %12, align 4
  %111 = icmp sge i32 %110, 17
  br i1 %111, label %112, label %121

112:                                              ; preds = %80
  %113 = load i32, i32* %4, align 4
  %114 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %115 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %116 = call i32 (i32, i8*, ...) @nes_debug(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %114, i8* %115)
  %117 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %118 = call i32 @memset(i8* %117, i32 0, i32 20)
  %119 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %120 = call i32 @memset(i8* %119, i32 0, i32 80)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %112, %80
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %38

125:                                              ; preds = %38
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %144, %128
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 17
  br i1 %131, label %132, label %159

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 8
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %138
  store i8 32, i8* %139, align 1
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %142
  store i8 32, i8* %143, align 1
  br label %144

144:                                              ; preds = %135, %132
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %147
  store i8 32, i8* %148, align 1
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %151
  store i8 32, i8* %152, align 1
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %155
  store i8 32, i8* %156, align 1
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %129

159:                                              ; preds = %129
  %160 = load i32, i32* %4, align 4
  %161 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %162 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %163 = call i32 (i32, i8*, ...) @nes_debug(i32 %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %161, i8* %162)
  br label %164

164:                                              ; preds = %19, %159, %125
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nes_debug(i32, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
