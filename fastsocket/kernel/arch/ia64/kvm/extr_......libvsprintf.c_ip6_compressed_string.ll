; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_ip6_compressed_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_ip6_compressed_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @ip6_compressed_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ip6_compressed_string(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.in6_addr, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @memcpy(%struct.in6_addr* %16, i8* %17, i32 16)
  %19 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr* %16)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = call i64 @ipv6_addr_is_isatap(%struct.in6_addr* %16)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %21, %2
  %25 = phi i1 [ true, %2 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 8)
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 6, i32* %7, align 4
  br label %33

32:                                               ; preds = %24
  store i32 8, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %59, %38
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %62

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = add i8 %57, 1
  store i8 %58, i8* %56, align 1
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %40

62:                                               ; preds = %52, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %34

66:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %79, %71
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %67

90:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %166, %90
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %169

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %99
  %106 = load i8*, i8** %3, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %3, align 8
  store i8 58, i8* %106, align 1
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i8*, i8** %3, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %3, align 8
  store i8 58, i8* %109, align 1
  store i32 0, i32* %14, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %166

115:                                              ; preds = %95
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %3, align 8
  store i8 58, i8* %119, align 1
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ntohs(i64 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = ashr i32 %129, 8
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, 255
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %121
  %136 = load i32, i32* %12, align 4
  %137 = icmp sgt i32 %136, 15
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i8*, i8** %3, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i8* @pack_hex_byte(i8* %139, i32 %140)
  store i8* %141, i8** %3, align 8
  br label %148

142:                                              ; preds = %135
  %143 = load i32, i32* %12, align 4
  %144 = call i8* @hex_asc_lo(i32 %143)
  %145 = ptrtoint i8* %144 to i8
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %3, align 8
  store i8 %145, i8* %146, align 1
  br label %148

148:                                              ; preds = %142, %138
  br label %149

149:                                              ; preds = %148, %121
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %13, align 4
  %154 = icmp sgt i32 %153, 15
  br i1 %154, label %155, label %159

155:                                              ; preds = %152, %149
  %156 = load i8*, i8** %3, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i8* @pack_hex_byte(i8* %156, i32 %157)
  store i8* %158, i8** %3, align 8
  br label %165

159:                                              ; preds = %152
  %160 = load i32, i32* %13, align 4
  %161 = call i8* @hex_asc_lo(i32 %160)
  %162 = ptrtoint i8* %161 to i8
  %163 = load i8*, i8** %3, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %3, align 8
  store i8 %162, i8* %163, align 1
  br label %165

165:                                              ; preds = %159, %155
  store i32 1, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %108
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %91

169:                                              ; preds = %91
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %3, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %3, align 8
  store i8 58, i8* %176, align 1
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i8*, i8** %3, align 8
  %180 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 12
  %183 = call i8* @ip4_string(i8* %179, i32* %182, i32 0)
  store i8* %183, i8** %3, align 8
  br label %184

184:                                              ; preds = %178, %169
  %185 = load i8*, i8** %3, align 8
  store i8 0, i8* %185, align 1
  %186 = load i8*, i8** %3, align 8
  ret i8* %186
}

declare dso_local i32 @memcpy(%struct.in6_addr*, i8*, i32) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_is_isatap(%struct.in6_addr*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i8* @pack_hex_byte(i8*, i32) #1

declare dso_local i8* @hex_asc_lo(i32) #1

declare dso_local i8* @ip4_string(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
