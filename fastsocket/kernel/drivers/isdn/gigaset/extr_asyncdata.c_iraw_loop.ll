; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_iraw_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_iraw_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i32, %struct.bc_state*, %struct.cardstate* }
%struct.bc_state = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.cardstate = type { i32, i64 }

@INS_have_data = common dso_local global i32 0, align 4
@INS_skip_frame = common dso_local global i32 0, align 4
@SBUFSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"received packet too long\0A\00", align 1
@DLE_FLAG = common dso_local global i8 0, align 1
@INS_DLE_command = common dso_local global i32 0, align 4
@INS_DLE_char = common dso_local global i32 0, align 4
@HW_HDR_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"could not allocate new skb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i32, %struct.inbuf_t*)* @iraw_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iraw_loop(i8 zeroext %0, i8* %1, i32 %2, %struct.inbuf_t* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inbuf_t*, align 8
  %9 = alloca %struct.cardstate*, align 8
  %10 = alloca %struct.bc_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inbuf_t* %3, %struct.inbuf_t** %8, align 8
  %14 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %15 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %14, i32 0, i32 2
  %16 = load %struct.cardstate*, %struct.cardstate** %15, align 8
  store %struct.cardstate* %16, %struct.cardstate** %9, align 8
  %17 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %18 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %17, i32 0, i32 1
  %19 = load %struct.bc_state*, %struct.bc_state** %18, align 8
  store %struct.bc_state* %19, %struct.bc_state** %10, align 8
  %20 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %21 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %24 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %23, i32 0, i32 2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %12, align 8
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %107, %4
  %28 = load i32, i32* @INS_have_data, align 4
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @INS_skip_frame, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %27
  %40 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SBUFSIZE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %50 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %53)
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %55 = load i32, i32* @INS_skip_frame, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %108

58:                                               ; preds = %39
  %59 = load i8, i8* %5, align 1
  %60 = call i32 @bitrev8(i8 zeroext %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = call i32* @__skb_put(%struct.sk_buff* %61, i32 1)
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %27
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %108

71:                                               ; preds = %63
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  %74 = load i8, i8* %72, align 1
  store i8 %74, i8* %5, align 1
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %7, align 4
  %77 = load i8, i8* %5, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @DLE_FLAG, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %71
  %83 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %84 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %89 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @INS_DLE_command, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %87, %82
  %95 = phi i1 [ true, %82 ], [ %93, %87 ]
  br label %96

96:                                               ; preds = %94, %71
  %97 = phi i1 [ false, %71 ], [ %95, %94 ]
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* @INS_DLE_char, align 4
  %103 = load %struct.inbuf_t*, %struct.inbuf_t** %8, align 8
  %104 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %108

107:                                              ; preds = %96
  br label %27

108:                                              ; preds = %101, %70, %48
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @INS_have_data, align 4
  %111 = and i32 %109, %110
  %112 = call i64 @likely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %167

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @INS_skip_frame, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @likely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %125 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %126 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %127 = call i32 @gigaset_rcv_skb(%struct.sk_buff* %124, %struct.cardstate* %125, %struct.bc_state* %126)
  br label %128

128:                                              ; preds = %123, %114
  %129 = load i32, i32* @INS_have_data, align 4
  %130 = load i32, i32* @INS_skip_frame, align 4
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %136 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %128
  %141 = load i32, i32* @INS_skip_frame, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  br label %166

144:                                              ; preds = %128
  %145 = load i64, i64* @SBUFSIZE, align 8
  %146 = load i64, i64* @HW_HDR_LEN, align 8
  %147 = add nsw i64 %145, %146
  %148 = call %struct.sk_buff* @dev_alloc_skb(i64 %147)
  store %struct.sk_buff* %148, %struct.sk_buff** %12, align 8
  %149 = icmp ne %struct.sk_buff* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i64 @likely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %144
  %154 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %155 = load i64, i64* @HW_HDR_LEN, align 8
  %156 = call i32 @skb_reserve(%struct.sk_buff* %154, i64 %155)
  br label %165

157:                                              ; preds = %144
  %158 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  %159 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dev_warn(i32 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %162 = load i32, i32* @INS_skip_frame, align 4
  %163 = load i32, i32* %11, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %157, %153
  br label %166

166:                                              ; preds = %165, %140
  br label %167

167:                                              ; preds = %166, %108
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %170 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %172 = load %struct.bc_state*, %struct.bc_state** %10, align 8
  %173 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %172, i32 0, i32 2
  store %struct.sk_buff* %171, %struct.sk_buff** %173, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %7, align 4
  %176 = sub nsw i32 %174, %175
  ret i32 %176
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @bitrev8(i8 zeroext) #1

declare dso_local i32* @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @gigaset_rcv_skb(%struct.sk_buff*, %struct.cardstate*, %struct.bc_state*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
