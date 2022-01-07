; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_postreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_postreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.ata_port*, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_DEV_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"EXIT, no device\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*, i32*)* @scc_postreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_postreset(%struct.ata_link* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ata_port*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %7 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %6, i32 0, i32 0
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %5, align 8
  %9 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATA_DEV_NONE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %19, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %22 = call i32 %20(%struct.ata_port* %21, i32 1)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ATA_DEV_NONE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %33, align 8
  %35 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %36 = call i32 %34(%struct.ata_port* %35, i32 0)
  br label %37

37:                                               ; preds = %29, %23
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATA_DEV_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATA_DEV_NONE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @DPRINTK(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %68

51:                                               ; preds = %43, %37
  %52 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %63 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @out_be32(i64 %61, i32 %64)
  br label %66

66:                                               ; preds = %57, %51
  %67 = call i32 @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %49
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @out_be32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
