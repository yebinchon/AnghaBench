; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnConfigInitTTLIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnConfigInitTTLIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@APCI3XXX_TTL_INIT_DIRECTION_PORT2 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"Buffer size error\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Command selection error\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Port 2 direction selection error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3XXX_InsnConfigInitTTLIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 1
  br i1 %17, label %18, label %45

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %10, align 1
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @APCI3XXX_TTL_INIT_DIRECTION_PORT2, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @APCI3XXX_TTL_INIT_DIRECTION_PORT2, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %34, %28
  br label %44

42:                                               ; preds = %18
  %43 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -100, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %41
  br label %47

45:                                               ; preds = %4
  %46 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i8, i8* %10, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @APCI3XXX_TTL_INIT_DIRECTION_PORT2, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 255
  br i1 %65, label %66, label %80

66:                                               ; preds = %61, %56
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  br label %82

80:                                               ; preds = %61
  %81 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %66
  br label %83

83:                                               ; preds = %82, %50, %47
  %84 = load i32, i32* %9, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load i8, i8* %10, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @APCI3XXX_TTL_INIT_DIRECTION_PORT2, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 224
  %100 = call i32 @outl(i32 %95, i64 %99)
  br label %101

101:                                              ; preds = %92, %86
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
