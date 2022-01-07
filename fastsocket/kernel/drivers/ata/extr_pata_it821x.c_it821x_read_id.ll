; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it821x.c_it821x_read_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it821x.c_it821x_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32 }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_ID_PROD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Integrated Technology Express\00", align 1
@ATA_ID_MAJOR_VER = common dso_local global i64 0, align 8
@ATA_ID_SERNO = common dso_local global i64 0, align 8
@ATA_ID_SERNO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, %struct.ata_taskfile*, i32*)* @it821x_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it821x_read_id(%struct.ata_device* %0, %struct.ata_taskfile* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.ata_taskfile*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %18 = load %struct.ata_taskfile*, %struct.ata_taskfile** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ata_do_dev_read_id(%struct.ata_device* %17, %struct.ata_taskfile* %18, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %79

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ATA_ID_PROD, align 4
  %28 = trunc i64 %14 to i32
  %29 = call i32 @ata_id_c_string(i32* %26, i8* %16, i32 %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 83
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -4097
  store i32 %33, i32* %31, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 83
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -8193
  store i32 %37, i32* %35, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 84
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -65
  store i32 %41, i32* %39, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 85
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, -1025
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 76
  store i32 0, i32* %47, align 4
  %48 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %25
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 49
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, 768
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 83
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 32767
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 83
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, 17408
  store i32 %62, i32* %60, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 86
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, 1024
  store i32 %66, i32* %64, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* @ATA_ID_MAJOR_VER, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, 31
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* @ATA_ID_SERNO, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* @ATA_ID_SERNO_LEN, align 4
  %76 = call i32 @memset(i32* %74, i32 32, i32 %75)
  br label %77

77:                                               ; preds = %50, %25
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %23
  %80 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ata_do_dev_read_id(%struct.ata_device*, %struct.ata_taskfile*, i32*) #2

declare dso_local i32 @ata_id_c_string(i32*, i8*, i32, i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
