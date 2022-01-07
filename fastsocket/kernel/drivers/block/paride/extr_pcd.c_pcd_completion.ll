; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32, i32 }

@IDE_BUSY = common dso_local global i32 0, align 4
@IDE_DRQ = common dso_local global i32 0, align 4
@IDE_READY = common dso_local global i32 0, align 4
@IDE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: %s: Read %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: %s: Unexpected phase %d, d=%d, k=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: WARNING: ATAPI phase errors\0A\00", align 1
@PCD_TMO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%s: Stuck DRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcd_unit*, i8*, i8*)* @pcd_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_completion(%struct.pcd_unit* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.pcd_unit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcd_unit* %0, %struct.pcd_unit** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %14 = load i32, i32* @IDE_BUSY, align 4
  %15 = load i32, i32* @IDE_DRQ, align 4
  %16 = load i32, i32* @IDE_READY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IDE_ERR, align 4
  %19 = or i32 %17, %18
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @pcd_wait(%struct.pcd_unit* %13, i32 %14, i32 %19, i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %116, label %23

23:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %114, %23
  %25 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %26 = call i32 @read_reg(%struct.pcd_unit* %25, i32 7)
  %27 = load i32, i32* @IDE_DRQ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %115

30:                                               ; preds = %24
  %31 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %32 = call i32 @read_reg(%struct.pcd_unit* %31, i32 4)
  %33 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %34 = call i32 @read_reg(%struct.pcd_unit* %33, i32 5)
  %35 = mul nsw i32 256, %34
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 3
  %39 = and i32 %38, 65532
  store i32 %39, i32* %10, align 4
  %40 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %41 = call i32 @read_reg(%struct.pcd_unit* %40, i32 2)
  %42 = and i32 %41, 3
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %70

45:                                               ; preds = %30
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %53 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @pi_read_block(i32 %54, i8* %55, i32 %56)
  %58 = load i32, i32* @verbose, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %62 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %51
  store i32 0, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %92

70:                                               ; preds = %48, %45, %30
  %71 = load i32, i32* @verbose, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %75 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %76, i8* %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %70
  %83 = load i32, i32* @verbose, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %87 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @printk_once(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = call i32 @mdelay(i32 1)
  br label %92

92:                                               ; preds = %90, %67
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* @PCD_TMO, align 4
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %99 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %115

102:                                              ; preds = %92
  %103 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %104 = load i32, i32* @IDE_BUSY, align 4
  %105 = load i32, i32* @IDE_DRQ, align 4
  %106 = load i32, i32* @IDE_READY, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @IDE_ERR, align 4
  %109 = or i32 %107, %108
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @pcd_wait(%struct.pcd_unit* %103, i32 %104, i32 %109, i8* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  store i32 -1, i32* %7, align 4
  br label %115

114:                                              ; preds = %102
  br label %24

115:                                              ; preds = %113, %97, %24
  br label %116

116:                                              ; preds = %115, %3
  %117 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %118 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pi_disconnect(i32 %119)
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i64 @pcd_wait(%struct.pcd_unit*, i32, i32, i8*, i8*) #1

declare dso_local i32 @read_reg(%struct.pcd_unit*, i32) #1

declare dso_local i32 @pi_read_block(i32, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @printk_once(i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pi_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
