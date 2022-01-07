; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_com20020_cs.c_com20020_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_com20020_cs.c_com20020_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.com20020_dev_t*, i64 }
%struct.com20020_dev_t = type { %struct.net_device* }
%struct.net_device = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"detach...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"com20020_detach(0x%p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unregister...\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unlinking...\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"kfree...\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"kfree2...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @com20020_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @com20020_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.com20020_dev_t*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 0
  %7 = load %struct.com20020_dev_t*, %struct.com20020_dev_t** %6, align 8
  store %struct.com20020_dev_t* %7, %struct.com20020_dev_t** %3, align 8
  %8 = load %struct.com20020_dev_t*, %struct.com20020_dev_t** %3, align 8
  %9 = getelementptr inbounds %struct.com20020_dev_t, %struct.com20020_dev_t* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %13 = call i32 (i32, i8*, ...) @DEBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.pcmcia_device* %12)
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @unregister_netdev(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @free_irq(i64 %29, %struct.net_device* %30)
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %35 = call i32 @com20020_release(%struct.pcmcia_device* %34)
  %36 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 0
  %39 = load %struct.com20020_dev_t*, %struct.com20020_dev_t** %38, align 8
  %40 = icmp ne %struct.com20020_dev_t* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load %struct.com20020_dev_t*, %struct.com20020_dev_t** %3, align 8
  %43 = getelementptr inbounds %struct.com20020_dev_t, %struct.com20020_dev_t* %42, i32 0, i32 0
  %44 = load %struct.net_device*, %struct.net_device** %43, align 8
  store %struct.net_device* %44, %struct.net_device** %4, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @free_netdev(%struct.net_device* %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %53 = load %struct.com20020_dev_t*, %struct.com20020_dev_t** %3, align 8
  %54 = call i32 @kfree(%struct.com20020_dev_t* %53)
  br label %55

55:                                               ; preds = %51, %33
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @com20020_release(%struct.pcmcia_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.com20020_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
