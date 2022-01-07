; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_alloc_cpls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_alloc_cpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*)* @alloc_cpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cpls(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i8* @alloc_wr(i32 4, i32 0, i32 %4)
  %6 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %7 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %6, i32 0, i32 2
  store i8* %5, i8** %7, align 8
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @alloc_wr(i32 4, i32 0, i32 %16)
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %19 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %21 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %36

25:                                               ; preds = %15
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @alloc_wr(i32 4, i32 0, i32 %26)
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %29 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %31 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %41

36:                                               ; preds = %34, %24
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %38 = call i32 @cxgbi_sock_free_cpl_skbs(%struct.cxgbi_sock* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %35, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i8* @alloc_wr(i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_free_cpl_skbs(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
