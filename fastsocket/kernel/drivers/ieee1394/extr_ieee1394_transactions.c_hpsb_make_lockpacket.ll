; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_lockpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_lockpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i8**, i32, %struct.hpsb_host* }
%struct.hpsb_host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpsb_packet* @hpsb_make_lockpacket(%struct.hpsb_host* %0, i32 %1, i32 %2, i32 %3, i8** %4, i8* %5) #0 {
  %7 = alloca %struct.hpsb_packet*, align 8
  %8 = alloca %struct.hpsb_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.hpsb_packet*, align 8
  %15 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = call %struct.hpsb_packet* @hpsb_alloc_packet(i32 8)
  store %struct.hpsb_packet* %16, %struct.hpsb_packet** %14, align 8
  %17 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %18 = icmp ne %struct.hpsb_packet* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %7, align 8
  br label %69

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
  br label %69

33:                                               ; preds = %20
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %46 [
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %33, %33
  store i32 4, i32* %15, align 4
  %36 = load i8**, i8*** %12, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i8**, i8*** %12, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %42 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %40, i8** %44, align 8
  br label %45

45:                                               ; preds = %38, %35
  br label %62

46:                                               ; preds = %33
  store i32 8, i32* %15, align 4
  %47 = load i8**, i8*** %12, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %52 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %50, i8** %54, align 8
  %55 = load i8**, i8*** %12, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %58 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  store i8* %56, i8** %60, align 8
  br label %61

61:                                               ; preds = %49, %46
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @fill_async_lock(%struct.hpsb_packet* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  store %struct.hpsb_packet* %68, %struct.hpsb_packet** %7, align 8
  br label %69

69:                                               ; preds = %62, %30, %19
  %70 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  ret %struct.hpsb_packet* %70
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
