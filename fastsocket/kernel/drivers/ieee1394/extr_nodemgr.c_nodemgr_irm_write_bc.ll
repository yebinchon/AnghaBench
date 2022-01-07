; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_irm_write_bc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_irm_write_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_entry = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@CSR_BROADCAST_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node_entry*, i32)* @nodemgr_irm_write_bc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nodemgr_irm_write_bc(%struct.node_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.node_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.node_entry* %0, %struct.node_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %10 = load i32, i32* @CSR_BROADCAST_CHANNEL, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %13 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %20 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %26 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %29 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24, %18, %2
  br label %67

35:                                               ; preds = %24
  %36 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %37 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_be32(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %44 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %47 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @hpsb_read(%struct.TYPE_4__* %45, i64 %48, i32 %49, i32 %50, i32* %6, i32 4)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @cpu_to_be32(i32 -2147483648)
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @hpsb_node_write(%struct.node_entry* %64, i32 %65, i32* %7, i32 4)
  br label %67

67:                                               ; preds = %34, %63, %59, %54, %35
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @hpsb_read(%struct.TYPE_4__*, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @hpsb_node_write(%struct.node_entry*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
