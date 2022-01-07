; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_softreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 (%struct.ata_port*, i32)* }

@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"about to softreset, devmask=%x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"SRST failed (err_mask=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"EXIT, classes[0]=%u [1]=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @scc_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 0
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %8, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %23 = call i64 @scc_devchk(%struct.ata_port* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %33 = call i64 @scc_devchk(%struct.ata_port* %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, 2
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %31, %28
  %39 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %42, align 8
  %44 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %45 = call i32 %43(%struct.ata_port* %44, i32 0)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @scc_bus_softreset(%struct.ata_port* %48, i32 %49, i64 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ata_port_printk(%struct.ata_port* %55, i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %96

61:                                               ; preds = %38
  %62 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %63 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 1
  %69 = call i32 @ata_sff_dev_classify(i32* %66, i32 %68, i32* %12)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %61
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 129
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %79 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, 2
  %85 = call i32 @ata_sff_dev_classify(i32* %82, i32 %84, i32* %12)
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %74, %61
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %88, %54
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i64 @scc_devchk(%struct.ata_port*, i32) #1

declare dso_local i32 @scc_bus_softreset(%struct.ata_port*, i32, i64) #1

declare dso_local i32 @ata_port_printk(%struct.ata_port*, i32, i8*, i32) #1

declare dso_local i32 @ata_sff_dev_classify(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
