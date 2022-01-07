; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.claw_privbk = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32, %struct.claw_privbk*, i8*, i8*, i64, i32, i32, i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"probex%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_ENVELOPE_SIZE = common dso_local global i32 0, align 4
@WS_NAME_NOT_DEF = common dso_local global i32 0, align 4
@CLAW_FRAME_SIZE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Creating the /proc files for a new CLAW device failed\0A\00", align 1
@claw_irq_handler = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"prbext 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @claw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claw_probe(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.claw_privbk*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  store %struct.claw_privbk* null, %struct.claw_privbk** %5, align 8
  %6 = load i32, i32* @setup, align 4
  %7 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 1
  %10 = call i32 @get_device(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %154

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 16, i32 %16)
  %18 = bitcast i8* %17 to %struct.claw_privbk*
  store %struct.claw_privbk* %18, %struct.claw_privbk** %5, align 8
  %19 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %20 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %19, i32 0, i32 1
  %21 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %22 = call i32 @dev_set_drvdata(i32* %20, %struct.claw_privbk* %21)
  %23 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %24 = icmp eq %struct.claw_privbk* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %27 = call i32 @probe_error(%struct.ccwgroup_device* %26)
  %28 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %29 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %28, i32 0, i32 1
  %30 = call i32 @put_device(i32* %29)
  %31 = load i32, i32* @setup, align 4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %154

37:                                               ; preds = %15
  %38 = load i32, i32* @MAX_ENVELOPE_SIZE, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kzalloc(i32 %38, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %43 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 4, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_3__*
  %47 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %48 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %47, i32 0, i32 0
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  %49 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %50 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %37
  %54 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %55 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp eq %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %53, %37
  %59 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %60 = call i32 @probe_error(%struct.ccwgroup_device* %59)
  %61 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %62 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %61, i32 0, i32 1
  %63 = call i32 @put_device(i32* %62)
  %64 = load i32, i32* @setup, align 4
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %154

70:                                               ; preds = %53
  %71 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %72 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @WS_NAME_NOT_DEF, align 4
  %77 = call i32 @memcpy(i32 %75, i32 %76, i32 8)
  %78 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %79 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WS_NAME_NOT_DEF, align 4
  %84 = call i32 @memcpy(i32 %82, i32 %83, i32 8)
  %85 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %86 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @WS_NAME_NOT_DEF, align 4
  %91 = call i32 @memcpy(i32 %89, i32 %90, i32 8)
  %92 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %93 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %97 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 5, i32* %99, align 8
  %100 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %101 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 5, i32* %103, align 4
  %104 = load i8*, i8** @CLAW_FRAME_SIZE, align 8
  %105 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %106 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  store i8* %104, i8** %108, align 8
  %109 = load i8*, i8** @CLAW_FRAME_SIZE, align 8
  %110 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %111 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  store i8* %109, i8** %113, align 8
  %114 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %115 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %114, i32 0, i32 1
  %116 = call i32 @claw_add_files(i32* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %70
  %120 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %121 = call i32 @probe_error(%struct.ccwgroup_device* %120)
  %122 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %123 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %122, i32 0, i32 1
  %124 = call i32 @put_device(i32* %123)
  %125 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %126 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %125, i32 0, i32 1
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @setup, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %154

132:                                              ; preds = %70
  %133 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %134 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %135 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store %struct.claw_privbk* %133, %struct.claw_privbk** %137, align 8
  %138 = load i8*, i8** @claw_irq_handler, align 8
  %139 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %140 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %141, i64 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i8* %138, i8** %144, align 8
  %145 = load i8*, i8** @claw_irq_handler, align 8
  %146 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %147 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %148, i64 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i8* %145, i8** %151, align 8
  %152 = load i32, i32* @setup, align 4
  %153 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %132, %119, %58, %25, %12
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.claw_privbk*) #1

declare dso_local i32 @probe_error(%struct.ccwgroup_device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @claw_add_files(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
