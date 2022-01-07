; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_treeboot-walnut.c_walnut_flashsel_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_treeboot-walnut.c_walnut_flashsel_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.walnut_flashsel_fixup.reg_flash = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 524288], align 4
@__const.walnut_flashsel_fixup.reg_sram = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 524288], align 4
@.str = private unnamed_addr constant [14 x i8] c"/plb/ebc/fpga\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't locate FPGA node\0A\0D\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"virtual-reg\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"no virtual-reg property\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"/plb/ebc/flash\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Couldn't locate flash node\0A\0D\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"flash reg property has unexpected size\0A\0D\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"/plb/ebc/sram\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Couldn't locate sram node\0A\0D\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"sram reg property has unexpected size\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @walnut_flashsel_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walnut_flashsel_fixup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast [3 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([3 x i32]* @__const.walnut_flashsel_fixup.reg_flash to i8*), i64 12, i1 false)
  %8 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([3 x i32]* @__const.walnut_flashsel_fixup.reg_sram to i8*), i64 12, i1 false)
  store i32 0, i32* %6, align 4
  %9 = call i8* @finddevice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 (i8*, i8*, ...) @getprop(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32** %5, i64 8)
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @in_8(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = call i8* @finddevice(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %24, i8** %1, align 8
  %25 = load i8*, i8** %1, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call i32 @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i8*, i8** %1, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %32 = call i32 (i8*, i8*, ...) @getprop(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %31, i64 12)
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 12
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  %38 = call i8* @finddevice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i8* %38, i8** %2, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = call i32 @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %46 = call i32 (i8*, i8*, ...) @getprop(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %45, i64 12)
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 12
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, 524288
  store i32 %58, i32* %56, align 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, 524288
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %51
  %63 = load i8*, i8** %1, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %65 = call i32 @setprop(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %64, i32 12)
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %68 = call i32 @setprop(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %67, i32 12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @finddevice(i8*) #2

declare dso_local i32 @fatal(i8*) #2

declare dso_local i32 @getprop(i8*, i8*, ...) #2

declare dso_local i32 @in_8(i32*) #2

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
