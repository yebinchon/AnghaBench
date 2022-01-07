; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_bf54x.c_bfin_softreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_bf54x.c_bfin_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SRST failed (err_mask=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @bfin_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
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
  %21 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %22 = call i64 @bfin_devchk(%struct.ata_port* %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %32 = call i64 @bfin_devchk(%struct.ata_port* %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, 2
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %30, %27
  %38 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %39 = call i32 @bfin_dev_select(%struct.ata_port* %38, i32 0)
  %40 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @bfin_bus_softreset(%struct.ata_port* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @ata_port_printk(%struct.ata_port* %46, i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %80

52:                                               ; preds = %37
  %53 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %54 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 1
  %60 = call i32 @ata_sff_dev_classify(i32* %57, i32 %59, i32* %12)
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %52
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 129
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %70 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 2
  %76 = call i32 @ata_sff_dev_classify(i32* %73, i32 %75, i32* %12)
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %68, %65, %52
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @bfin_devchk(%struct.ata_port*, i32) #1

declare dso_local i32 @bfin_dev_select(%struct.ata_port*, i32) #1

declare dso_local i32 @bfin_bus_softreset(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_port_printk(%struct.ata_port*, i32, i8*, i32) #1

declare dso_local i32 @ata_sff_dev_classify(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
