; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_lock64packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_lock64packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32*, i32, %struct.hpsb_host* }
%struct.hpsb_host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpsb_packet* @hpsb_make_lock64packet(%struct.hpsb_host* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.hpsb_packet*, align 8
  %8 = alloca %struct.hpsb_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hpsb_packet*, align 8
  %15 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = call %struct.hpsb_packet* @hpsb_alloc_packet(i32 16)
  store %struct.hpsb_packet* %16, %struct.hpsb_packet** %14, align 8
  %17 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %18 = icmp ne %struct.hpsb_packet* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %7, align 8
  br label %89

20:                                               ; preds = %6
  %21 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %22 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %23 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %22, i32 0, i32 2
  store %struct.hpsb_host* %21, %struct.hpsb_host** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %26 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %28 = call i64 @hpsb_get_tlabel(%struct.hpsb_packet* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %32 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %31)
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %7, align 8
  br label %89

33:                                               ; preds = %20
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %53 [
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %33, %33
  store i32 8, i32* %15, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 32
  %42 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %43 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %49 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %38, %35
  br label %82

53:                                               ; preds = %33
  store i32 16, i32* %15, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 32
  %59 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %60 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %65 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %63, i32* %67, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 32
  %71 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %72 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %70, i32* %74, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %78 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %56, %53
  br label %82

82:                                               ; preds = %81, %52
  %83 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @fill_async_lock(%struct.hpsb_packet* %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  store %struct.hpsb_packet* %88, %struct.hpsb_packet** %7, align 8
  br label %89

89:                                               ; preds = %82, %30, %19
  %90 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  ret %struct.hpsb_packet* %90
}

declare dso_local %struct.hpsb_packet* @hpsb_alloc_packet(i32) #1

declare dso_local i64 @hpsb_get_tlabel(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @fill_async_lock(%struct.hpsb_packet*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
