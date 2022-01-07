; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_es7000_32.c_es7000_mps_oem_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_es7000_32.c_es7000_mps_oem_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_table = type { i64 }
%struct.mpc_oemtable = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"UNISYS\00", align 1
@es7000_mps_ret = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc_table*, i8*, i8*)* @es7000_mps_oem_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es7000_mps_oem_check(%struct.mpc_table* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mpc_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpc_oemtable*, align 8
  store %struct.mpc_table* %0, %struct.mpc_table** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.mpc_table*, %struct.mpc_table** %4, align 8
  %10 = getelementptr inbounds %struct.mpc_table, %struct.mpc_table* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.mpc_table*, %struct.mpc_table** %4, align 8
  %15 = getelementptr inbounds %struct.mpc_table, %struct.mpc_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mpc_oemtable*
  store %struct.mpc_oemtable* %17, %struct.mpc_oemtable** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load %struct.mpc_oemtable*, %struct.mpc_oemtable** %8, align 8
  %23 = bitcast %struct.mpc_oemtable* %22 to i8*
  %24 = call i32 @parse_unisys_oem(i8* %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %13
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* @es7000_mps_ret, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = call i32 (...) @es7000_apic_is_cluster()
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_unisys_oem(i8*) #1

declare dso_local i32 @es7000_apic_is_cluster(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
