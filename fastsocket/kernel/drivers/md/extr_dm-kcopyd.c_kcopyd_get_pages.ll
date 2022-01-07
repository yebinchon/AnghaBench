; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-kcopyd.c_kcopyd_get_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-kcopyd.c_kcopyd_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_client = type { i32, %struct.page_list* }
%struct.page_list = type { %struct.page_list* }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_kcopyd_client*, i32, %struct.page_list**)* @kcopyd_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcopyd_get_pages(%struct.dm_kcopyd_client* %0, i32 %1, %struct.page_list** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_kcopyd_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page_list**, align 8
  %8 = alloca %struct.page_list*, align 8
  store %struct.dm_kcopyd_client* %0, %struct.dm_kcopyd_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.page_list** %2, %struct.page_list*** %7, align 8
  %9 = load %struct.page_list**, %struct.page_list*** %7, align 8
  store %struct.page_list* null, %struct.page_list** %9, align 8
  br label %10

10:                                               ; preds = %49, %3
  %11 = load i32, i32* @__GFP_NOWARN, align 4
  %12 = load i32, i32* @__GFP_NORETRY, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.page_list* @alloc_pl(i32 %13)
  store %struct.page_list* %14, %struct.page_list** %8, align 8
  %15 = load %struct.page_list*, %struct.page_list** %8, align 8
  %16 = icmp ne %struct.page_list* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %10
  %22 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %23 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %22, i32 0, i32 1
  %24 = load %struct.page_list*, %struct.page_list** %23, align 8
  store %struct.page_list* %24, %struct.page_list** %8, align 8
  %25 = load %struct.page_list*, %struct.page_list** %8, align 8
  %26 = icmp ne %struct.page_list* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %54

32:                                               ; preds = %21
  %33 = load %struct.page_list*, %struct.page_list** %8, align 8
  %34 = getelementptr inbounds %struct.page_list, %struct.page_list* %33, i32 0, i32 0
  %35 = load %struct.page_list*, %struct.page_list** %34, align 8
  %36 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %37 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %36, i32 0, i32 1
  store %struct.page_list* %35, %struct.page_list** %37, align 8
  %38 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %39 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %32, %10
  %43 = load %struct.page_list**, %struct.page_list*** %7, align 8
  %44 = load %struct.page_list*, %struct.page_list** %43, align 8
  %45 = load %struct.page_list*, %struct.page_list** %8, align 8
  %46 = getelementptr inbounds %struct.page_list, %struct.page_list* %45, i32 0, i32 0
  store %struct.page_list* %44, %struct.page_list** %46, align 8
  %47 = load %struct.page_list*, %struct.page_list** %8, align 8
  %48 = load %struct.page_list**, %struct.page_list*** %7, align 8
  store %struct.page_list* %47, %struct.page_list** %48, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %10, label %53

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %66

54:                                               ; preds = %31
  %55 = load %struct.page_list**, %struct.page_list*** %7, align 8
  %56 = load %struct.page_list*, %struct.page_list** %55, align 8
  %57 = icmp ne %struct.page_list* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %5, align 8
  %60 = load %struct.page_list**, %struct.page_list*** %7, align 8
  %61 = load %struct.page_list*, %struct.page_list** %60, align 8
  %62 = call i32 @kcopyd_put_pages(%struct.dm_kcopyd_client* %59, %struct.page_list* %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %53
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.page_list* @alloc_pl(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kcopyd_put_pages(%struct.dm_kcopyd_client*, %struct.page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
