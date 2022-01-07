; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.cryptocop_private* }
%struct.cryptocop_private = type { i64, %struct.cryptocop_private* }

@CRYPTOCOP_SESSION_ID_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cryptocop_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptocop_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cryptocop_private*, align 8
  %6 = alloca %struct.cryptocop_private*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.cryptocop_private*, %struct.cryptocop_private** %8, align 8
  store %struct.cryptocop_private* %9, %struct.cryptocop_private** %5, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load %struct.cryptocop_private*, %struct.cryptocop_private** %5, align 8
  %12 = icmp ne %struct.cryptocop_private* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.cryptocop_private*, %struct.cryptocop_private** %5, align 8
  %15 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %14, i32 0, i32 1
  %16 = load %struct.cryptocop_private*, %struct.cryptocop_private** %15, align 8
  store %struct.cryptocop_private* %16, %struct.cryptocop_private** %6, align 8
  %17 = load %struct.cryptocop_private*, %struct.cryptocop_private** %5, align 8
  %18 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CRYPTOCOP_SESSION_ID_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.cryptocop_private*, %struct.cryptocop_private** %5, align 8
  %24 = getelementptr inbounds %struct.cryptocop_private, %struct.cryptocop_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @cryptocop_free_session(i64 %25)
  br label %27

27:                                               ; preds = %22, %13
  %28 = load %struct.cryptocop_private*, %struct.cryptocop_private** %5, align 8
  %29 = call i32 @kfree(%struct.cryptocop_private* %28)
  %30 = load %struct.cryptocop_private*, %struct.cryptocop_private** %6, align 8
  store %struct.cryptocop_private* %30, %struct.cryptocop_private** %5, align 8
  br label %10

31:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @cryptocop_free_session(i64) #1

declare dso_local i32 @kfree(%struct.cryptocop_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
