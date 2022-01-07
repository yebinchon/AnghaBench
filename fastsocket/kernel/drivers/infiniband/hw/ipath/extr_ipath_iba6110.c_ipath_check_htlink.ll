; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_check_htlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_check_htlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Couldn't read linkerror%d of HT slave/primary block\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"HT linkerr%d bits 0x%x set, clearing\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed write to clear HT linkerror%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Couldn't reread linkerror%d of HT slave/primary block\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"HT linkerror%d bits 0x%x couldn't be cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @ipath_check_htlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_check_htlink(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %81, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %84

9:                                                ; preds = %6
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %11 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 4
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, 13
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @pci_read_config_byte(%struct.TYPE_3__* %19, i32 %20, i32* %3)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %9
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %80

30:                                               ; preds = %9
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 240
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load i32, i32* @VERBOSE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ipath_cdbg(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @pci_write_config_byte(%struct.TYPE_3__* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ipath_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %34
  %51 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %52 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @pci_read_config_byte(%struct.TYPE_3__* %53, i32 %54, i32* %3)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %78

64:                                               ; preds = %50
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 240
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %70 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %3, align 4
  %75 = ashr i32 %74, 4
  %76 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %68, %64
  br label %78

78:                                               ; preds = %77, %57
  br label %79

79:                                               ; preds = %78, %30
  br label %80

80:                                               ; preds = %79, %23
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %6

84:                                               ; preds = %6
  ret void
}

declare dso_local i64 @pci_read_config_byte(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i32) #1

declare dso_local i64 @pci_write_config_byte(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ipath_dbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
