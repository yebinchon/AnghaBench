; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_init_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_init_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.ata_link* }
%struct.ata_link = type { i64, %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SATA_PMP_MAX_PORTS = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATA_ALL_DEVICES = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32)* @sata_pmp_init_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_init_links(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_link*, align 8
  %9 = alloca %struct.ata_eh_context*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 0
  %12 = load %struct.ata_link*, %struct.ata_link** %11, align 8
  store %struct.ata_link* %12, %struct.ata_link** %6, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %14 = icmp ne %struct.ata_link* %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @SATA_PMP_MAX_PORTS, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 16, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_NOIO, align 4
  %21 = call %struct.ata_link* @kzalloc(i32 %19, i32 %20)
  store %struct.ata_link* %21, %struct.ata_link** %6, align 8
  %22 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %23 = icmp ne %struct.ata_link* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SATA_PMP_MAX_PORTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %34 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %34, i64 %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ata_link_init(%struct.ata_port* %33, %struct.ata_link* %37, i32 %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 0
  store %struct.ata_link* %44, %struct.ata_link** %46, align 8
  br label %47

47:                                               ; preds = %43, %2
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %73, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48
  %53 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %53, i64 %55
  store %struct.ata_link* %56, %struct.ata_link** %8, align 8
  %57 = load %struct.ata_link*, %struct.ata_link** %8, align 8
  %58 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %57, i32 0, i32 1
  store %struct.ata_eh_context* %58, %struct.ata_eh_context** %9, align 8
  %59 = load %struct.ata_link*, %struct.ata_link** %8, align 8
  %60 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @ATA_ALL_DEVICES, align 4
  %62 = load %struct.ata_eh_context*, %struct.ata_eh_context** %9, align 8
  %63 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @ATA_EH_RESET, align 4
  %68 = load %struct.ata_eh_context*, %struct.ata_eh_context** %9, align 8
  %69 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %52
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %48

76:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.ata_link* @kzalloc(i32, i32) #1

declare dso_local i32 @ata_link_init(%struct.ata_port*, %struct.ata_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
