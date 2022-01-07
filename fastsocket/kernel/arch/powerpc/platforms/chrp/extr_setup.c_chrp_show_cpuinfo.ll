; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/chrp/extr_setup.c_chrp_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/chrp/extr_setup.c_chrp_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"machine\09\09: CHRP %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"IBM,LongTrail\00", align 1
@gg2_pci_config_base = common dso_local global i64 0, align 8
@GG2_PCI_DRAM_CTRL = common dso_local global i64 0, align 8
@GG2_PCI_DRAM_BANK0 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"4 MB\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"8 MB\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"16 MB\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"32 MB\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"64 MB\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"128 MB\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"memory bank %d\09: %s %s\0A\00", align 1
@gg2_memtypes = common dso_local global i32* null, align 8
@GG2_PCI_CC_CTRL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"board l2\09: %s %s (%s)\0A\00", align 1
@gg2_cachesizes = common dso_local global i32* null, align 8
@gg2_cachetypes = common dso_local global i8** null, align 8
@gg2_cachemodes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chrp_show_cpuinfo(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %8, %struct.device_node** %6, align 8
  %9 = load %struct.device_node*, %struct.device_node** %6, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i8* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %110

20:                                               ; preds = %14
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 13)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %110, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @gg2_pci_config_base, align 8
  %26 = load i64, i64* @GG2_PCI_DRAM_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @in_le32(i64 %27)
  %29 = ashr i32 %28, 31
  %30 = and i32 %29, 1
  store i32 %30, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %80, %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 4, i32 6
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %31
  %39 = load i64, i64* @gg2_pci_config_base, align 8
  %40 = load i64, i64* @GG2_PCI_DRAM_BANK0, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @in_le32(i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %80

51:                                               ; preds = %38
  %52 = load i32, i32* %5, align 4
  %53 = lshr i32 %52, 8
  %54 = and i32 %53, 31
  switch i32 %54, label %61 [
    i32 31, label %55
    i32 30, label %56
    i32 28, label %57
    i32 24, label %58
    i32 16, label %59
    i32 0, label %60
  ]

55:                                               ; preds = %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %62

56:                                               ; preds = %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %62

57:                                               ; preds = %51
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %62

58:                                               ; preds = %51
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %62

59:                                               ; preds = %51
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %62

60:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %62

61:                                               ; preds = %51
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %62

62:                                               ; preds = %61, %60, %59, %58, %57, %56, %55
  %63 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32*, i32** @gg2_memtypes, align 8
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %74

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = lshr i32 %71, 1
  %73 = and i32 %72, 3
  br label %74

74:                                               ; preds = %70, %69
  %75 = phi i32 [ 1, %69 ], [ %73, %70 ]
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %66, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %64, i8* %65, i32 %78)
  br label %80

80:                                               ; preds = %74, %50
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %31

83:                                               ; preds = %31
  %84 = load i64, i64* @gg2_pci_config_base, align 8
  %85 = load i64, i64* @GG2_PCI_CC_CTRL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @in_le32(i64 %86)
  store i32 %87, i32* %5, align 4
  %88 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %89 = load i32*, i32** @gg2_cachesizes, align 8
  %90 = load i32, i32* %5, align 4
  %91 = lshr i32 %90, 7
  %92 = and i32 %91, 3
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i8**, i8*** @gg2_cachetypes, align 8
  %97 = load i32, i32* %5, align 4
  %98 = lshr i32 %97, 2
  %99 = and i32 %98, 3
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %96, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load i32*, i32** @gg2_cachemodes, align 8
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, 3
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %95, i8* %102, i32 %108)
  br label %110

110:                                              ; preds = %83, %20, %14
  %111 = load %struct.device_node*, %struct.device_node** %6, align 8
  %112 = call i32 @of_node_put(%struct.device_node* %111)
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @in_le32(i64) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
