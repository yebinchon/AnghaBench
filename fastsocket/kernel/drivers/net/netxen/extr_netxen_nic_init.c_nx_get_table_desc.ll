; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_nx_get_table_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_nx_get_table_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_table_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uni_table_desc* (i32*, i32)* @nx_get_table_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uni_table_desc* @nx_get_table_desc(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.uni_table_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uni_table_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = bitcast i32* %12 to %struct.uni_table_desc*
  store %struct.uni_table_desc* %13, %struct.uni_table_desc** %7, align 8
  %14 = load %struct.uni_table_desc*, %struct.uni_table_desc** %7, align 8
  %15 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @cpu_to_le32(i32 %16)
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %50, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load %struct.uni_table_desc*, %struct.uni_table_desc** %7, align 8
  %24 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @cpu_to_le32(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.uni_table_desc*, %struct.uni_table_desc** %7, align 8
  %29 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @cpu_to_le32(i32 %30)
  %32 = mul i64 %27, %31
  %33 = add i64 %26, %32
  store i64 %33, i64* %9, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @cpu_to_le32(i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %22
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = bitcast i32* %47 to %struct.uni_table_desc*
  store %struct.uni_table_desc* %48, %struct.uni_table_desc** %3, align 8
  br label %54

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %18

53:                                               ; preds = %18
  store %struct.uni_table_desc* null, %struct.uni_table_desc** %3, align 8
  br label %54

54:                                               ; preds = %53, %44
  %55 = load %struct.uni_table_desc*, %struct.uni_table_desc** %3, align 8
  ret %struct.uni_table_desc* %55
}

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
