; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_core.c_saa7146_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_core.c_saa7146_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.saa7146_dev = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 (%struct.saa7146_dev*)* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.anon = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@SAA7146_RPS_MEM = common dso_local global i32 0, align 4
@saa7146_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @saa7146_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7146_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca [4 x %struct.anon], align 16
  %6 = alloca %struct.anon*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.v4l2_device* %8, %struct.v4l2_device** %3, align 8
  %9 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %10 = call %struct.saa7146_dev* @to_saa7146_dev(%struct.v4l2_device* %9)
  store %struct.saa7146_dev* %10, %struct.saa7146_dev** %4, align 8
  %11 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %5, i64 0, i64 0
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %12, align 16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %20 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %18, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 1
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %26 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %24, align 16
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 1
  %31 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %32 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %30, align 8
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %23, i64 1
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %38 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %36, align 16
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 1
  %43 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %44 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %42, align 8
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %35, i64 1
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  store i8* null, i8** %48, align 16
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %51 = bitcast %struct.saa7146_dev* %50 to i8*
  %52 = call i32 @DEB_EE(i8* %51)
  %53 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %54 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32 (%struct.saa7146_dev*)*, i32 (%struct.saa7146_dev*)** %56, align 8
  %58 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %59 = call i32 %57(%struct.saa7146_dev* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = call i32 @pci_set_drvdata(%struct.pci_dev* %60, i32* null)
  %62 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %63 = load i32, i32* @MC1, align 4
  %64 = call i32 @saa7146_write(%struct.saa7146_dev* %62, i32 %63, i32 16711680)
  %65 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %66 = load i32, i32* @IER, align 4
  %67 = call i32 @saa7146_write(%struct.saa7146_dev* %65, i32 %66, i32 0)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %72 = call i32 @free_irq(i32 %70, %struct.saa7146_dev* %71)
  %73 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %5, i64 0, i64 0
  store %struct.anon* %73, %struct.anon** %6, align 8
  br label %74

74:                                               ; preds = %89, %1
  %75 = load %struct.anon*, %struct.anon** %6, align 8
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %82 = load %struct.anon*, %struct.anon** %6, align 8
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.anon*, %struct.anon** %6, align 8
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pci_free_consistent(%struct.pci_dev* %80, i32 %81, i8* %84, i32 %87)
  br label %89

89:                                               ; preds = %79
  %90 = load %struct.anon*, %struct.anon** %6, align 8
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 1
  store %struct.anon* %91, %struct.anon** %6, align 8
  br label %74

92:                                               ; preds = %74
  %93 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %94 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @iounmap(i32 %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %98 = call i32 @pci_release_region(%struct.pci_dev* %97, i32 0)
  %99 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %100 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %99, i32 0, i32 0
  %101 = call i32 @list_del(i32* %100)
  %102 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %103 = call i32 @pci_disable_device(%struct.pci_dev* %102)
  %104 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %105 = call i32 @kfree(%struct.saa7146_dev* %104)
  %106 = load i32, i32* @saa7146_num, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* @saa7146_num, align 4
  ret void
}

declare dso_local %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.saa7146_dev* @to_saa7146_dev(%struct.v4l2_device*) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.saa7146_dev*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i8*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
