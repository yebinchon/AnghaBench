; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_serial.c_serial_edit_cmdline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_serial.c_serial_edit_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.serial_console_data* }
%struct.serial_console_data = type { i8 (...)*, i32 (i8)*, i64 (...)* }

@console_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @serial_edit_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_edit_cmdline(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.serial_console_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.serial_console_data*, %struct.serial_console_data** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ops, i32 0, i32 0), align 8
  store %struct.serial_console_data* %10, %struct.serial_console_data** %9, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %102, %2
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = icmp slt i32 %21, 5000
  br i1 %23, label %24, label %104

24:                                               ; preds = %20
  %25 = load %struct.serial_console_data*, %struct.serial_console_data** %9, align 8
  %26 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %25, i32 0, i32 2
  %27 = load i64 (...)*, i64 (...)** %26, align 8
  %28 = call i64 (...) %27()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %100, %30
  %32 = load %struct.serial_console_data*, %struct.serial_console_data** %9, align 8
  %33 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %32, i32 0, i32 0
  %34 = load i8 (...)*, i8 (...)** %33, align 8
  %35 = call signext i8 (...) %34()
  store i8 %35, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 10
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 13
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i1 [ false, %31 ], [ %41, %38 ]
  br i1 %43, label %44, label %101

44:                                               ; preds = %42
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 127
  br i1 %51, label %52, label %63

52:                                               ; preds = %48, %44
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = icmp ne i8* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %58, i8** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  %61 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56, %52
  br label %100

63:                                               ; preds = %48
  %64 = load i8, i8* %7, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 24
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8, i8* %7, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 21
  br i1 %70, label %71, label %83

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %6, align 4
  %81 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %72

82:                                               ; preds = %72
  br label %99

83:                                               ; preds = %67
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8, i8* %7, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  %93 = load %struct.serial_console_data*, %struct.serial_console_data** %9, align 8
  %94 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %93, i32 0, i32 1
  %95 = load i32 (i8)*, i32 (i8)** %94, align 8
  %96 = load i8, i8* %7, align 1
  %97 = call i32 %95(i8 signext %96)
  br label %98

98:                                               ; preds = %87, %83
  br label %99

99:                                               ; preds = %98, %82
  br label %100

100:                                              ; preds = %99, %62
  br label %31

101:                                              ; preds = %42
  br label %104

102:                                              ; preds = %24
  %103 = call i32 @udelay(i32 1000)
  br label %20

104:                                              ; preds = %101, %20
  %105 = load i8*, i8** %8, align 8
  store i8 0, i8* %105, align 1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
