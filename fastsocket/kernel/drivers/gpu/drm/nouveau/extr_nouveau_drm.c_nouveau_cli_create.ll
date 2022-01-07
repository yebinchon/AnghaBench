; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_cli_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_cli_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nouveau_cli = type { i32, i32 }

@nouveau_config = common dso_local global i32 0, align 4
@nouveau_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*, i32, i8**)* @nouveau_cli_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_cli_create(%struct.pci_dev* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.nouveau_cli*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = call i32 @nouveau_name(%struct.pci_dev* %14)
  %16 = load i32, i32* @nouveau_config, align 4
  %17 = load i32, i32* @nouveau_debug, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8**, i8*** %9, align 8
  %20 = call i32 @nouveau_client_create_(i8* %13, i32 %15, i32 %16, i32 %17, i32 %18, i8** %19)
  store i32 %20, i32* %11, align 4
  %21 = load i8**, i8*** %9, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %23, %struct.nouveau_cli** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %28 = icmp ne %struct.nouveau_cli* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %31 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %30, i32 0, i32 1
  %32 = call i32 @nouveau_client_destroy(i32* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i8**, i8*** %9, align 8
  store i8* null, i8** %34, align 8
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %4
  %37 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %38 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %37, i32 0, i32 0
  %39 = call i32 @mutex_init(i32* %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @nouveau_client_create_(i8*, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @nouveau_name(%struct.pci_dev*) #1

declare dso_local i32 @nouveau_client_destroy(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
