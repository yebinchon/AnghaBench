; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_select_mss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_select_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, %struct.TYPE_2__*, %struct.dst_entry* }
%struct.TYPE_2__ = type { i32* }
%struct.dst_entry = type { i32 }

@RTAX_ADVMSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_sock_select_mss(%struct.cxgbi_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_entry*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %8 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %7, i32 0, i32 2
  %9 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  store %struct.dst_entry* %9, %struct.dst_entry** %6, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %11 = load i32, i32* @RTAX_ADVMSS, align 4
  %12 = call i32 @dst_metric(%struct.dst_entry* %10, i32 %11)
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %14 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %16 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub i32 %18, 40
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = sub i32 %22, 40
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %25 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %28 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %31 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 40
  %38 = icmp ult i32 %29, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %26
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %41 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 40
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %39, %26
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %53 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, 40
  %56 = call i32 @cxgbi_sock_find_best_mtu(%struct.cxgbi_sock* %51, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @dst_metric(%struct.dst_entry*, i32) #1

declare dso_local i32 @cxgbi_sock_find_best_mtu(%struct.cxgbi_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
