; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_serial.c_serial_console_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_serial.c_serial_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"ns16550\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pnpPNP,501\00", align 1
@serial_cd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"marvell,mv64360-mpsc\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"fsl,cpm1-scc-uart\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"fsl,cpm1-smc-uart\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"fsl,cpm2-scc-uart\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"fsl,cpm2-smc-uart\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fsl,mpc5200-psc-uart\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"xlnx,opb-uartlite-1.00.b\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"xlnx,xps-uartlite-1.00.a\00", align 1
@serial_open = common dso_local global i32 0, align 4
@console_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@serial_write = common dso_local global i32 0, align 4
@serial_close = common dso_local global i32 0, align 4
@serial_edit_cmdline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial_console_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 -1, i32* %3, align 4
  %4 = call i8* (...) @serial_get_stdout_devp()
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %80

8:                                                ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @dt_is_compatible(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @dt_is_compatible(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @ns16550_console_init(i8* %17, %struct.TYPE_8__* @serial_cd)
  store i32 %18, i32* %3, align 4
  br label %67

19:                                               ; preds = %12
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @dt_is_compatible(i8* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @mpsc_console_init(i8* %24, %struct.TYPE_8__* @serial_cd)
  store i32 %25, i32* %3, align 4
  br label %66

26:                                               ; preds = %19
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @dt_is_compatible(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %2, align 8
  %32 = call i64 @dt_is_compatible(i8* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @dt_is_compatible(i8* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %2, align 8
  %40 = call i64 @dt_is_compatible(i8* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34, %30, %26
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @cpm_console_init(i8* %43, %struct.TYPE_8__* @serial_cd)
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %38
  %46 = load i8*, i8** %2, align 8
  %47 = call i64 @dt_is_compatible(i8* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @mpc5200_psc_console_init(i8* %50, %struct.TYPE_8__* @serial_cd)
  store i32 %51, i32* %3, align 4
  br label %64

52:                                               ; preds = %45
  %53 = load i8*, i8** %2, align 8
  %54 = call i64 @dt_is_compatible(i8* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %2, align 8
  %58 = call i64 @dt_is_compatible(i8* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %52
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @uartlite_console_init(i8* %61, %struct.TYPE_8__* @serial_cd)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %23
  br label %67

67:                                               ; preds = %66, %16
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @serial_open, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ops, i32 0, i32 4), align 8
  %72 = load i32, i32* @serial_write, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ops, i32 0, i32 3), align 4
  %73 = load i32, i32* @serial_close, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ops, i32 0, i32 2), align 8
  store %struct.TYPE_8__* @serial_cd, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ops, i32 0, i32 1), align 8
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @serial_cd, i32 0, i32 0), align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @serial_edit_cmdline, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @console_ops, i32 0, i32 0), align 8
  br label %78

78:                                               ; preds = %76, %70
  store i32 0, i32* %1, align 4
  br label %81

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %7
  store i32 -1, i32* %1, align 4
  br label %81

81:                                               ; preds = %80, %78
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i8* @serial_get_stdout_devp(...) #1

declare dso_local i64 @dt_is_compatible(i8*, i8*) #1

declare dso_local i32 @ns16550_console_init(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @mpsc_console_init(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @cpm_console_init(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @mpc5200_psc_console_init(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @uartlite_console_init(i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
