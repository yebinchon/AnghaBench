; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_do_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_do_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@OV511_NUMSBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"buffer memory deallocated\00", align 1
@BUF_NOT_ALLOCATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*)* @ov51x_do_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_do_dealloc(%struct.usb_ov511* %0) #0 {
  %2 = alloca %struct.usb_ov511*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %2, align 8
  %4 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %6 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %11 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @OV511_NUMFRAMES, align 4
  %14 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %15 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %18 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @MAX_DATA_SIZE(i32 %16, i32 %19)
  %21 = mul nsw i32 %13, %20
  %22 = call i32 @rvfree(i32* %12, i32 %21)
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %24 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %9, %1
  %26 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %27 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @vfree(i32* %28)
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %31 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %33 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @vfree(i32* %34)
  %36 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %37 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %59, %25
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @OV511_NUMSBUF, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %44 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @kfree(i32* %50)
  %52 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %53 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %38

62:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %117, %62
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @OV511_NUMFRAMES, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %120

67:                                               ; preds = %63
  %68 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %69 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  %75 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %76 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  %82 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %83 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %90 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %116

98:                                               ; preds = %67
  %99 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %100 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = ptrtoint i32* %106 to i64
  %108 = call i32 @free_page(i64 %107)
  %109 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %110 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  br label %116

116:                                              ; preds = %98, %67
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %63

120:                                              ; preds = %63
  %121 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @BUF_NOT_ALLOCATED, align 4
  %123 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %124 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @rvfree(i32*, i32) #1

declare dso_local i32 @MAX_DATA_SIZE(i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
