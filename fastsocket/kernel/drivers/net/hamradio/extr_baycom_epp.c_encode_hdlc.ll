; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_epp.c_encode_hdlc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_epp.c_encode_hdlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baycom_state = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.sk_buff* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.sk_buff = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.baycom_state*)* @encode_hdlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_hdlc(%struct.baycom_state* %0) #0 {
  %2 = alloca %struct.baycom_state*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.baycom_state* %0, %struct.baycom_state** %2, align 8
  %14 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %15 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %192

20:                                               ; preds = %1
  %21 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %22 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %21, i32 0, i32 2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %192

27:                                               ; preds = %20
  %28 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %29 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %28, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %29, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %35 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @calc_crc_ccitt(i8* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %11, align 4
  %49 = lshr i32 %48, 8
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %50, i8* %51, align 1
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  store i8 126, i8* %52, align 1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %143, %27
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, -2
  br i1 %56, label %57, label %144

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = lshr i32 %58, 8
  store i32 %59, i32* %7, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = xor i32 %73, -1
  store i32 %74, i32* %8, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %57
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %81, %57
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %125, %83
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %85, 8
  br i1 %86, label %87, label %128

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %13, align 4
  %90 = shl i32 496, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %87
  %98 = load i32, i32* %13, align 4
  %99 = shl i32 256, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %13, align 4
  %105 = shl i32 2, %104
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 %105, %106
  %108 = sub nsw i32 %107, 1
  %109 = and i32 %103, %108
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %13, align 4
  %112 = shl i32 2, %111
  %113 = load i32, i32* %10, align 4
  %114 = shl i32 %112, %113
  %115 = sub nsw i32 %114, 1
  %116 = xor i32 %115, -1
  %117 = and i32 %110, %116
  %118 = shl i32 %117, 1
  %119 = or i32 %109, %118
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %7, align 4
  %123 = xor i32 %122, -1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %97, %87
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %84

128:                                              ; preds = %84
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 8
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %134, %128
  %132 = load i32, i32* %10, align 4
  %133 = icmp uge i32 %132, 8
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = trunc i32 %135 to i8
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %4, align 8
  store i8 %136, i8* %137, align 1
  %139 = load i32, i32* %9, align 4
  %140 = lshr i32 %139, 8
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = sub i32 %141, 8
  store i32 %142, i32* %10, align 4
  br label %131

143:                                              ; preds = %131
  br label %54

144:                                              ; preds = %54
  %145 = load i32, i32* %10, align 4
  %146 = shl i32 32382, %145
  %147 = load i32, i32* %9, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = add i32 %149, 16
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %154, %144
  %152 = load i32, i32* %10, align 4
  %153 = icmp uge i32 %152, 8
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %4, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i32, i32* %9, align 4
  %160 = lshr i32 %159, 8
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sub i32 %161, 8
  store i32 %162, i32* %10, align 4
  br label %151

163:                                              ; preds = %151
  %164 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %165 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %169 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  store i8* %167, i8** %170, align 8
  %171 = load i8*, i8** %4, align 8
  %172 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %173 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = ptrtoint i8* %171 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  %180 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %181 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %184 = call i32 @dev_kfree_skb(%struct.sk_buff* %183)
  %185 = load %struct.baycom_state*, %struct.baycom_state** %2, align 8
  %186 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %185, i32 0, i32 0
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %163, %26, %19
  ret void
}

declare dso_local i32 @calc_crc_ccitt(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
