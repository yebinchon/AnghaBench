; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/drivers/extr_tuntap_user.c_tuntap_del_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/drivers/extr_tuntap_user.c_tuntap_del_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @tuntap_del_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tuntap_del_addr(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tuntap_data*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.tuntap_data*
  store %struct.tuntap_data* %9, %struct.tuntap_data** %7, align 8
  %10 = load %struct.tuntap_data*, %struct.tuntap_data** %7, align 8
  %11 = getelementptr inbounds %struct.tuntap_data, %struct.tuntap_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.tuntap_data*, %struct.tuntap_data** %7, align 8
  %16 = getelementptr inbounds %struct.tuntap_data, %struct.tuntap_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  br label %27

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.tuntap_data*, %struct.tuntap_data** %7, align 8
  %24 = getelementptr inbounds %struct.tuntap_data, %struct.tuntap_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @close_addr(i8* %21, i8* %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @close_addr(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
