; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.h_vcpu_set_tr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.h_vcpu_set_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thash_data = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thash_data*, i8*, i8*, i8*, i8*)* @vcpu_set_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcpu_set_tr(%struct.thash_data* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.thash_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.thash_data* %0, %struct.thash_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %13 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %16 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %19 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %22 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
