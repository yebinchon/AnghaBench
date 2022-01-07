; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_module.c_act2000_find_msn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_module.c_act2000_find_msn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.msn_entry* }
%struct.msn_entry = type { i32, %struct.msn_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32)* @act2000_find_msn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act2000_find_msn(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msn_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.msn_entry*, %struct.msn_entry** %11, align 8
  store %struct.msn_entry* %12, %struct.msn_entry** %8, align 8
  store i32 48, i32* %9, align 4
  br label %13

13:                                               ; preds = %27, %3
  %14 = load %struct.msn_entry*, %struct.msn_entry** %8, align 8
  %15 = icmp ne %struct.msn_entry* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.msn_entry*, %struct.msn_entry** %8, align 8
  %18 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strcmp(i32 %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load %struct.msn_entry*, %struct.msn_entry** %8, align 8
  %25 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.msn_entry*, %struct.msn_entry** %8, align 8
  %29 = getelementptr inbounds %struct.msn_entry, %struct.msn_entry* %28, i32 0, i32 1
  %30 = load %struct.msn_entry*, %struct.msn_entry** %29, align 8
  store %struct.msn_entry* %30, %struct.msn_entry** %8, align 8
  br label %13

31:                                               ; preds = %23, %13
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 48
  %37 = shl i32 1, %36
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
