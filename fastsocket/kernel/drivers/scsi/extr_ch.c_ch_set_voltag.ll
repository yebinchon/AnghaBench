; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ch.c_ch_set_voltag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ch.c_ch_set_voltag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s %s voltag: 0x%x => \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@SEND_VOLUME_TAG = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i32*)* @ch_set_voltag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_set_voltag(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [12 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kzalloc(i32 512, i32 %15)
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %85

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %30, i32 %31, i32* %32)
  %34 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 0
  %35 = call i32 @memset(i32* %34, i32 0, i32 48)
  %36 = load i32, i32* @SEND_VOLUME_TAG, align 4
  %37 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 5
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ch_elem_to_typecode(%struct.TYPE_7__* %44, i32 %45)
  %47 = or i32 %43, %46
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 2
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 3
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %22
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 13, i32 12
  br label %68

63:                                               ; preds = %22
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 11, i32 10
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i32 [ %62, %58 ], [ %67, %63 ]
  %70 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 5
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 9
  store i32 255, i32* %71, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @memcpy(i32* %72, i32* %73, i32 32)
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @ch_check_voltag(i32* %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 0
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  %81 = call i32 @ch_do_scsi(%struct.TYPE_7__* %77, i32* %78, i32* %79, i32 256, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @kfree(i32* %82)
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %68, %19
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ch_elem_to_typecode(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ch_check_voltag(i32*) #1

declare dso_local i32 @ch_do_scsi(%struct.TYPE_7__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
