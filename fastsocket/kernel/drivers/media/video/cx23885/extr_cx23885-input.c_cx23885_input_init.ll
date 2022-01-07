; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-input.c_cx23885_input_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-input.c_cx23885_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.cx23885_dev = type { i32, %struct.cx23885_kernel_ir*, %struct.TYPE_7__*, i32* }
%struct.cx23885_kernel_ir = type { %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir*, %struct.rc_dev*, %struct.cx23885_dev* }
%struct.rc_dev = type { i32, i64, i8*, i32, i32, i32, %struct.cx23885_kernel_ir*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@RC_TYPE_ALL = common dso_local global i64 0, align 8
@RC_MAP_RC5_HAUPPAUGE_NEW = common dso_local global i8* null, align 8
@RC_MAP_TEVII_NEC = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cx23885 IR (%s)\00", align 1
@cx23885_boards = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"pci-%s/ir0\00", align 1
@BUS_PCI = common dso_local global i32 0, align 4
@cx23885_input_ir_open = common dso_local global i32 0, align 4
@cx23885_input_ir_close = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_input_init(%struct.cx23885_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca %struct.cx23885_kernel_ir*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %190

17:                                               ; preds = %1
  %18 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %29 [
    i32 129, label %21
    i32 130, label %21
    i32 131, label %21
    i32 128, label %25
  ]

21:                                               ; preds = %17, %17, %17
  %22 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* @RC_TYPE_ALL, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i8*, i8** @RC_MAP_RC5_HAUPPAUGE_NEW, align 8
  store i8* %24, i8** %6, align 8
  br label %32

25:                                               ; preds = %17
  %26 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* @RC_TYPE_ALL, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** @RC_MAP_TEVII_NEC, align 8
  store i8* %28, i8** %6, align 8
  br label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %190

32:                                               ; preds = %25, %21
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.cx23885_kernel_ir* @kzalloc(i32 32, i32 %33)
  store %struct.cx23885_kernel_ir* %34, %struct.cx23885_kernel_ir** %4, align 8
  %35 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %36 = icmp eq %struct.cx23885_kernel_ir* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %190

40:                                               ; preds = %32
  %41 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %42 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %43 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %42, i32 0, i32 3
  store %struct.cx23885_dev* %41, %struct.cx23885_dev** %43, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cx23885_boards, align 8
  %46 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @kasprintf(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = bitcast i8* %53 to %struct.cx23885_kernel_ir*
  %55 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %56 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %55, i32 0, i32 0
  store %struct.cx23885_kernel_ir* %54, %struct.cx23885_kernel_ir** %56, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %59 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i32 @pci_name(%struct.TYPE_7__* %60)
  %62 = call i8* @kasprintf(i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = bitcast i8* %62 to %struct.cx23885_kernel_ir*
  %64 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %65 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %64, i32 0, i32 1
  store %struct.cx23885_kernel_ir* %63, %struct.cx23885_kernel_ir** %65, align 8
  %66 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %66, %struct.rc_dev** %5, align 8
  %67 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %68 = icmp ne %struct.rc_dev* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %40
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %178

72:                                               ; preds = %40
  %73 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %74 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %75 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %74, i32 0, i32 2
  store %struct.rc_dev* %73, %struct.rc_dev** %75, align 8
  %76 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %77 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %76, i32 0, i32 0
  %78 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %77, align 8
  %79 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %80 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %79, i32 0, i32 10
  store %struct.cx23885_kernel_ir* %78, %struct.cx23885_kernel_ir** %80, align 8
  %81 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %82 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %81, i32 0, i32 1
  %83 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %82, align 8
  %84 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %85 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %84, i32 0, i32 9
  store %struct.cx23885_kernel_ir* %83, %struct.cx23885_kernel_ir** %85, align 8
  %86 = load i32, i32* @BUS_PCI, align 4
  %87 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %88 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 8
  %90 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %91 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %94 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %72
  %100 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %101 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %106 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i64 %104, i64* %107, align 8
  %108 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %109 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %108, i32 0, i32 2
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %114 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  br label %133

116:                                              ; preds = %72
  %117 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %118 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %117, i32 0, i32 2
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %123 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i64 %121, i64* %124, align 8
  %125 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %126 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %131 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  br label %133

133:                                              ; preds = %116, %99
  %134 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %135 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %134, i32 0, i32 2
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %139 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32* %137, i32** %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %143 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i64, i64* %8, align 8
  %145 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %146 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %148 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %149 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %148, i32 0, i32 6
  store %struct.cx23885_kernel_ir* %147, %struct.cx23885_kernel_ir** %149, align 8
  %150 = load i32, i32* @cx23885_input_ir_open, align 4
  %151 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %152 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @cx23885_input_ir_close, align 4
  %154 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %155 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  %156 = load i8*, i8** %6, align 8
  %157 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %158 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* @MODULE_NAME, align 4
  %160 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %161 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %163 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %164 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %163, i32 0, i32 1
  store %struct.cx23885_kernel_ir* %162, %struct.cx23885_kernel_ir** %164, align 8
  %165 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %166 = call i32 @rc_register_device(%struct.rc_dev* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %133
  br label %171

170:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %190

171:                                              ; preds = %169
  %172 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %173 = call i32 @cx23885_input_ir_stop(%struct.cx23885_dev* %172)
  %174 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %175 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %174, i32 0, i32 1
  store %struct.cx23885_kernel_ir* null, %struct.cx23885_kernel_ir** %175, align 8
  %176 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %177 = call i32 @rc_free_device(%struct.rc_dev* %176)
  br label %178

178:                                              ; preds = %171, %69
  %179 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %180 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %179, i32 0, i32 1
  %181 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %180, align 8
  %182 = call i32 @kfree(%struct.cx23885_kernel_ir* %181)
  %183 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %184 = getelementptr inbounds %struct.cx23885_kernel_ir, %struct.cx23885_kernel_ir* %183, i32 0, i32 0
  %185 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %184, align 8
  %186 = call i32 @kfree(%struct.cx23885_kernel_ir* %185)
  %187 = load %struct.cx23885_kernel_ir*, %struct.cx23885_kernel_ir** %4, align 8
  %188 = call i32 @kfree(%struct.cx23885_kernel_ir* %187)
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %178, %170, %37, %29, %14
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.cx23885_kernel_ir* @kzalloc(i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_7__*) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @cx23885_input_ir_stop(%struct.cx23885_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.cx23885_kernel_ir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
