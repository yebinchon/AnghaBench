; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_qdi.c_qdi_data_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_qdi.c_qdi_data_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i8*, i32, i32)* @qdi_data_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdi_data_xfer(%struct.ata_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ata_id_has_dword_io(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %95

17:                                               ; preds = %4
  %18 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.ata_port*, %struct.ata_port** %21, align 8
  store %struct.ata_port* %22, %struct.ata_port** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 3
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @READ, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = lshr i32 %34, 2
  %36 = call i32 @ioread32_rep(i32 %32, i8* %33, i32 %35)
  br label %46

37:                                               ; preds = %17
  %38 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = lshr i32 %43, 2
  %45 = call i32 @iowrite32_rep(i32 %41, i8* %42, i32 %44)
  br label %46

46:                                               ; preds = %37, %28
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @READ, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %56 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ioread32(i32 %58)
  %60 = call zeroext i8 @cpu_to_le32(i32 %59)
  store i8 %60, i8* %11, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @memcpy(i8* %68, i8* %11, i32 %69)
  br label %89

71:                                               ; preds = %50
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @memcpy(i8* %11, i8* %79, i32 %80)
  %82 = load i8, i8* %11, align 1
  %83 = call i32 @le32_to_cpu(i8 zeroext %82)
  %84 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %85 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @iowrite32(i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %71, %54
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 4, %90
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %89, %46
  br label %101

95:                                               ; preds = %4
  %96 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ata_sff_data_xfer(%struct.ata_device* %96, i8* %97, i32 %98, i32 %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %95, %94
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i64 @ata_id_has_dword_io(i32) #1

declare dso_local i32 @ioread32_rep(i32, i8*, i32) #1

declare dso_local i32 @iowrite32_rep(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local zeroext i8 @cpu_to_le32(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8 zeroext) #1

declare dso_local i32 @ata_sff_data_xfer(%struct.ata_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
