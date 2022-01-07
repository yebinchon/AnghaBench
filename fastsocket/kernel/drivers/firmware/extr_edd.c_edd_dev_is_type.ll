; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_edd.c_edd_dev_is_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_edd.c_edd_dev_is_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_device = type { i32 }
%struct.edd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edd_device*, i8*)* @edd_dev_is_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edd_dev_is_type(%struct.edd_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edd_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edd_info*, align 8
  store %struct.edd_device* %0, %struct.edd_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %8 = icmp ne %struct.edd_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.edd_device*, %struct.edd_device** %4, align 8
  %12 = call %struct.edd_info* @edd_dev_get_info(%struct.edd_device* %11)
  store %struct.edd_info* %12, %struct.edd_info** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %17 = icmp ne %struct.edd_info* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %20 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i32 @strncmp(i32 %22, i8* %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.edd_info*, %struct.edd_info** %6, align 8
  %30 = getelementptr inbounds %struct.edd_info, %struct.edd_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @strncmp(i32 %32, i8* %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28, %18
  store i32 1, i32* %3, align 4
  br label %41

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %15, %10
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %38, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.edd_info* @edd_dev_get_info(%struct.edd_device*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
