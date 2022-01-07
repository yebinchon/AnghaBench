; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_get_paged_crc_eof.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_get_paged_crc_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.fcoe_percpu_s = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcoe_get_paged_crc_eof(%struct.sk_buff* %0, i32 %1, %struct.fcoe_percpu_s* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fcoe_percpu_s*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fcoe_percpu_s* %2, %struct.fcoe_percpu_s** %7, align 8
  %9 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %7, align 8
  %10 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %9, i32 0, i32 1
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %8, align 8
  %12 = load %struct.page*, %struct.page** %8, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.page* @alloc_page(i32 %15)
  store %struct.page* %16, %struct.page** %8, align 8
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %76

22:                                               ; preds = %14
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %7, align 8
  %25 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %24, i32 0, i32 1
  store %struct.page* %23, %struct.page** %25, align 8
  %26 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %7, align 8
  %27 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = call i32 @get_page(%struct.page* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.page*, %struct.page** %8, align 8
  %37 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %7, align 8
  %38 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @skb_fill_page_desc(%struct.sk_buff* %31, i32 %35, %struct.page* %36, i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %7, align 8
  %58 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %7, align 8
  %64 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %28
  %69 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %7, align 8
  %70 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %69, i32 0, i32 1
  store %struct.page* null, %struct.page** %70, align 8
  %71 = load %struct.fcoe_percpu_s*, %struct.fcoe_percpu_s** %7, align 8
  %72 = getelementptr inbounds %struct.fcoe_percpu_s, %struct.fcoe_percpu_s* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.page*, %struct.page** %8, align 8
  %74 = call i32 @put_page(%struct.page* %73)
  br label %75

75:                                               ; preds = %68, %28
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %19
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
