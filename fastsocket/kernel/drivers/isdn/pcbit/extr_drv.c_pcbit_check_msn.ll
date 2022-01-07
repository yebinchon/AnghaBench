; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_drv.c_pcbit_check_msn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_drv.c_pcbit_check_msn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { %struct.msn_entry* }
%struct.msn_entry = type { i32*, %struct.msn_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcbit_dev*, i8*)* @pcbit_check_msn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcbit_check_msn(%struct.pcbit_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.msn_entry*, align 8
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %7, i32 0, i32 0
  %9 = load %struct.msn_entry*, %struct.msn_entry** %8, align 8
  store %struct.msn_entry* %9, %struct.msn_entry** %6, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  %12 = icmp ne %struct.msn_entry* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  %15 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %33

19:                                               ; preds = %13
  %20 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  %21 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i32* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %33

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.msn_entry*, %struct.msn_entry** %6, align 8
  %30 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %29, i32 0, i32 1
  %31 = load %struct.msn_entry*, %struct.msn_entry** %30, align 8
  store %struct.msn_entry* %31, %struct.msn_entry** %6, align 8
  br label %10

32:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
