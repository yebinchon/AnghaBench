; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_h4.c_h4_check_data_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_h4.c_h4_check_data_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h4_struct = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"len %d room %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Data length is too large\00", align 1
@H4_W4_DATA = common dso_local global i32 0, align 4
@H4_W4_PACKET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.h4_struct*, i32)* @h4_check_data_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h4_check_data_len(%struct.h4_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.h4_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.h4_struct* %0, %struct.h4_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.h4_struct*, %struct.h4_struct** %4, align 8
  %8 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @skb_tailroom(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.h4_struct*, %struct.h4_struct** %4, align 8
  %18 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @hci_recv_frame(i32* %19)
  br label %40

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = call i32 @BT_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.h4_struct*, %struct.h4_struct** %4, align 8
  %28 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree_skb(i32* %29)
  br label %39

31:                                               ; preds = %21
  %32 = load i32, i32* @H4_W4_DATA, align 4
  %33 = load %struct.h4_struct*, %struct.h4_struct** %4, align 8
  %34 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.h4_struct*, %struct.h4_struct** %4, align 8
  %37 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32, i32* @H4_W4_PACKET_TYPE, align 4
  %42 = load %struct.h4_struct*, %struct.h4_struct** %4, align 8
  %43 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.h4_struct*, %struct.h4_struct** %4, align 8
  %45 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.h4_struct*, %struct.h4_struct** %4, align 8
  %47 = getelementptr inbounds %struct.h4_struct, %struct.h4_struct* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @skb_tailroom(i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_recv_frame(i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
