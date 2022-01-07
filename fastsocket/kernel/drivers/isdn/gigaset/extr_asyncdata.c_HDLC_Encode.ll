; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_HDLC_Encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_HDLC_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32, i32 }

@PPP_INITFCS = common dso_local global i32 0, align 4
@PPP_FLAG = common dso_local global i8 0, align 1
@PPP_ESCAPE = common dso_local global i8 0, align 1
@PPP_TRANS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32, i32)* @HDLC_Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @HDLC_Encode(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @PPP_INITFCS, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %33, %3
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @muststuff(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %13, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %11, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 @crc_ccitt_byte(i32 %34, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %9, align 4
  %42 = xor i32 %41, 65535
  store i32 %42, i32* %9, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add i32 %45, %46
  %48 = add i32 %47, 6
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %50, %51
  %53 = call %struct.sk_buff* @dev_alloc_skb(i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %40
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @dev_kfree_skb(%struct.sk_buff* %57)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %159

59:                                               ; preds = %40
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @skb_reserve(%struct.sk_buff* %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %65, i32 %68, i32 2)
  %70 = load i8, i8* @PPP_FLAG, align 1
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i8* @skb_put(%struct.sk_buff* %71, i32 1)
  store i8 %70, i8* %72, align 1
  br label %73

73:                                               ; preds = %110, %59
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %73
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @muststuff(i8 zeroext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %79
  %87 = load i8, i8* @PPP_ESCAPE, align 1
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i8* @skb_put(%struct.sk_buff* %88, i32 1)
  store i8 %87, i8* %89, align 1
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  %94 = load i8, i8* %92, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @PPP_TRANS, align 1
  %97 = zext i8 %96 to i32
  %98 = xor i32 %95, %97
  %99 = trunc i32 %98 to i8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i8* @skb_put(%struct.sk_buff* %100, i32 1)
  store i8 %99, i8* %101, align 1
  br label %110

102:                                              ; preds = %79
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %104, align 8
  %107 = load i8, i8* %105, align 1
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = call i8* @skb_put(%struct.sk_buff* %108, i32 1)
  store i8 %107, i8* %109, align 1
  br label %110

110:                                              ; preds = %102, %86
  br label %73

111:                                              ; preds = %73
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 255
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %10, align 1
  %115 = load i8, i8* %10, align 1
  %116 = call i64 @muststuff(i8 zeroext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load i8, i8* @PPP_ESCAPE, align 1
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = call i8* @skb_put(%struct.sk_buff* %120, i32 1)
  store i8 %119, i8* %121, align 1
  %122 = load i8, i8* @PPP_TRANS, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %10, align 1
  %125 = zext i8 %124 to i32
  %126 = xor i32 %125, %123
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %10, align 1
  br label %128

128:                                              ; preds = %118, %111
  %129 = load i8, i8* %10, align 1
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = call i8* @skb_put(%struct.sk_buff* %130, i32 1)
  store i8 %129, i8* %131, align 1
  %132 = load i32, i32* %9, align 4
  %133 = ashr i32 %132, 8
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %10, align 1
  %136 = load i8, i8* %10, align 1
  %137 = call i64 @muststuff(i8 zeroext %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %128
  %140 = load i8, i8* @PPP_ESCAPE, align 1
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = call i8* @skb_put(%struct.sk_buff* %141, i32 1)
  store i8 %140, i8* %142, align 1
  %143 = load i8, i8* @PPP_TRANS, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* %10, align 1
  %146 = zext i8 %145 to i32
  %147 = xor i32 %146, %144
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %10, align 1
  br label %149

149:                                              ; preds = %139, %128
  %150 = load i8, i8* %10, align 1
  %151 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %152 = call i8* @skb_put(%struct.sk_buff* %151, i32 1)
  store i8 %150, i8* %152, align 1
  %153 = load i8, i8* @PPP_FLAG, align 1
  %154 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %155 = call i8* @skb_put(%struct.sk_buff* %154, i32 1)
  store i8 %153, i8* %155, align 1
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = call i32 @dev_kfree_skb(%struct.sk_buff* %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %158, %struct.sk_buff** %4, align 8
  br label %159

159:                                              ; preds = %149, %56
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %160
}

declare dso_local i64 @muststuff(i8 zeroext) #1

declare dso_local i32 @crc_ccitt_byte(i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
