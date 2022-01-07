; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_console_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_console_data = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"virtual-reg\00", align 1
@mpsc_base = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"sdma\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mpscintr\00", align 1
@mpscintr_base = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@MPSC_INTR_CAUSE = common dso_local global i32 0, align 4
@MPSC_INTR_MASK = common dso_local global i32 0, align 4
@mpsc_open = common dso_local global i32 0, align 4
@mpsc_putc = common dso_local global i32 0, align 4
@mpsc_getc = common dso_local global i32 0, align 4
@mpsc_tstc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpsc_console_init(i8* %0, %struct.serial_console_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.serial_console_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.serial_console_data* %1, %struct.serial_console_data** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @getprop(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %6, i32 8)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %83

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** @mpsc_base, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @mpsc_get_virtreg_of_phandle(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %83

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @mpsc_get_virtreg_of_phandle(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** @mpscintr_base, align 8
  %27 = load i32*, i32** @mpscintr_base, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %83

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @getprop(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %6, i32 8)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %83

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 4, i32 12
  %44 = load i32*, i32** @mpscintr_base, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** @mpscintr_base, align 8
  %47 = load i32*, i32** @mpscintr_base, align 8
  %48 = load i32, i32* @MPSC_INTR_CAUSE, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @out_le32(i32* %50, i32 0)
  %52 = load i32*, i32** @mpscintr_base, align 8
  %53 = load i32, i32* @MPSC_INTR_CAUSE, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @out_le32(i32* %55, i32 0)
  %57 = load i32*, i32** @mpscintr_base, align 8
  %58 = load i32, i32* @MPSC_INTR_MASK, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @out_le32(i32* %60, i32 0)
  %62 = load i32*, i32** @mpscintr_base, align 8
  %63 = load i32, i32* @MPSC_INTR_MASK, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @out_le32(i32* %65, i32 0)
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @mpsc_stop_dma(i8* %67)
  %69 = load i32, i32* @mpsc_open, align 4
  %70 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %71 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @mpsc_putc, align 4
  %73 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %74 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @mpsc_getc, align 4
  %76 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %77 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @mpsc_tstc, align 4
  %79 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %80 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %82 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  store i32 0, i32* %3, align 4
  br label %84

83:                                               ; preds = %36, %29, %22, %15
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %37
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @getprop(i8*, i8*, i8**, i32) #1

declare dso_local i8* @mpsc_get_virtreg_of_phandle(i8*, i8*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @mpsc_stop_dma(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
