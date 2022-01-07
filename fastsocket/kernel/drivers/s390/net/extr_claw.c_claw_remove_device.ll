; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i64, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.claw_privbk = type { %struct.TYPE_3__*, %struct.claw_privbk*, %struct.claw_privbk* }
%struct.TYPE_3__ = type { %struct.claw_privbk* }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" will be removed.\0A\00", align 1
@CCWGROUP_ONLINE = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @claw_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_remove_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.claw_privbk*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %5 = icmp ne %struct.ccwgroup_device* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load i32, i32* @setup, align 4
  %10 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %11 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %10, i32 0, i32 1
  %12 = call i32 @dev_name(i32* %11)
  %13 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %15 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %14, i32 0, i32 1
  %16 = call %struct.claw_privbk* @dev_get_drvdata(i32* %15)
  store %struct.claw_privbk* %16, %struct.claw_privbk** %3, align 8
  %17 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %18 = icmp ne %struct.claw_privbk* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %23 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %22, i32 0, i32 1
  %24 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %26 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CCWGROUP_ONLINE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %32 = call i32 @claw_shutdown_device(%struct.ccwgroup_device* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %35 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %34, i32 0, i32 1
  %36 = call i32 @claw_remove_files(i32* %35)
  %37 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %38 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %37, i32 0, i32 2
  %39 = load %struct.claw_privbk*, %struct.claw_privbk** %38, align 8
  %40 = call i32 @kfree(%struct.claw_privbk* %39)
  %41 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %42 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %41, i32 0, i32 2
  store %struct.claw_privbk* null, %struct.claw_privbk** %42, align 8
  %43 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %44 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %43, i32 0, i32 1
  %45 = load %struct.claw_privbk*, %struct.claw_privbk** %44, align 8
  %46 = call i32 @kfree(%struct.claw_privbk* %45)
  %47 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %48 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %47, i32 0, i32 1
  store %struct.claw_privbk* null, %struct.claw_privbk** %48, align 8
  %49 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %50 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.claw_privbk*, %struct.claw_privbk** %53, align 8
  %55 = call i32 @kfree(%struct.claw_privbk* %54)
  %56 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %57 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.claw_privbk* null, %struct.claw_privbk** %60, align 8
  %61 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %62 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.claw_privbk*, %struct.claw_privbk** %65, align 8
  %67 = call i32 @kfree(%struct.claw_privbk* %66)
  %68 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %69 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store %struct.claw_privbk* null, %struct.claw_privbk** %72, align 8
  %73 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %74 = call i32 @kfree(%struct.claw_privbk* %73)
  %75 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %76 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %75, i32 0, i32 1
  %77 = call i32 @dev_set_drvdata(i32* %76, i32* null)
  %78 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %79 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %79, align 8
  %81 = load i64, i64* @READ, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @dev_set_drvdata(i32* %84, i32* null)
  %86 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %87 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %87, align 8
  %89 = load i64, i64* @WRITE, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @dev_set_drvdata(i32* %92, i32* null)
  %94 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %95 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %94, i32 0, i32 1
  %96 = call i32 @put_device(i32* %95)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.claw_privbk* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @claw_shutdown_device(%struct.ccwgroup_device*) #1

declare dso_local i32 @claw_remove_files(i32*) #1

declare dso_local i32 @kfree(%struct.claw_privbk*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
