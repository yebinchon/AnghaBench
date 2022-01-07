; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_netlink.c_ibnl_put_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_netlink.c_ibnl_put_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ibnl_put_msg(%struct.sk_buff* %0, %struct.nlmsghdr** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nlmsghdr**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nlmsghdr** %1, %struct.nlmsghdr*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %14, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @RDMA_NL_GET_TYPE(i32 %19, i32 %20)
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @NLM_F_MULTI, align 4
  %24 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %17, i32 0, i32 %18, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %9, align 8
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %25, align 8
  %26 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %9, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %26, align 8
  %28 = icmp ne %struct.nlmsghdr* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  br label %44

30:                                               ; preds = %6
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i8* @skb_tail_pointer(%struct.sk_buff* %31)
  %33 = load i8*, i8** %14, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %9, align 8
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %38, align 8
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.nlmsghdr**, %struct.nlmsghdr*** %9, align 8
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %41, align 8
  %43 = call i8* @nlmsg_data(%struct.nlmsghdr* %42)
  store i8* %43, i8** %7, align 8
  br label %48

44:                                               ; preds = %29
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @nlmsg_trim(%struct.sk_buff* %45, i8* %46)
  store i8* null, i8** %7, align 8
  br label %48

48:                                               ; preds = %44, %30
  %49 = load i8*, i8** %7, align 8
  ret i8* %49
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
