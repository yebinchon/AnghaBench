; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/connector/extr_ucon.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/connector/extr_ucon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.sockaddr_nl = type { i32, i64, i32 }
%struct.cn_msg = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pollfd = type { i32, i64, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to open %s for writing: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@PF_NETLINK = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@NETLINK_CONNECTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@AF_NETLINK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"subscribing to %u.%u\0A\00", align 1
@CN_TEST_IDX = common dso_local global i32 0, align 4
@CN_TEST_VAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@seq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"%d messages have been sent to %08x.%08x.\0A\00", align 1
@need_exit = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"recv buf\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Error message received.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"%.24s : [%x.%x] [%08u.%08u].\0A\00", align 1
@NETLINK_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@SOL_NETLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.sockaddr_nl, align 8
  %11 = alloca %struct.cn_msg*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pollfd, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %30, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %28 [
    i32 115, label %25
    i32 104, label %26
  ]

25:                                               ; preds = %23
  store i32 1, i32* %15, align 4
  br label %30

26:                                               ; preds = %23
  %27 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %210

28:                                               ; preds = %23
  %29 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %210

30:                                               ; preds = %25
  br label %18

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @optind, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* @optind, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32* @fopen(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @strerror(i32 %48)
  %50 = call i32 (i8*, ...) @ulog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %47, i32 %49)
  %51 = load i32*, i32** @stdout, align 8
  store i32* %51, i32** %12, align 8
  br label %52

52:                                               ; preds = %44, %35
  br label %55

53:                                               ; preds = %31
  %54 = load i32*, i32** @stdout, align 8
  store i32* %54, i32** %12, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %57 = call i32 @memset(i8* %56, i32 0, i32 1024)
  %58 = load i32, i32* @PF_NETLINK, align 4
  %59 = load i32, i32* @SOCK_DGRAM, align 4
  %60 = load i32, i32* @NETLINK_CONNECTOR, align 4
  %61 = call i32 @socket(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %210

66:                                               ; preds = %55
  %67 = load i32, i32* @AF_NETLINK, align 4
  %68 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %10, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %10, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %10, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @CN_TEST_IDX, align 4
  %72 = load i32, i32* @CN_TEST_VAL, align 4
  %73 = call i32 (i8*, ...) @ulog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = bitcast %struct.sockaddr_nl* %10 to %struct.sockaddr*
  %76 = call i32 @bind(i32 %74, %struct.sockaddr* %75, i32 24)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @close(i32 %80)
  store i32 -1, i32* %3, align 4
  br label %210

82:                                               ; preds = %66
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %135

85:                                               ; preds = %82
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %87 = call i32 @memset(i8* %86, i32 0, i32 1024)
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %89 = bitcast i8* %88 to %struct.cn_msg*
  store %struct.cn_msg* %89, %struct.cn_msg** %11, align 8
  %90 = load i32, i32* @CN_TEST_IDX, align 4
  %91 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %92 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @CN_TEST_VAL, align 4
  %95 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %96 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @seq, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @seq, align 4
  %100 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %101 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %103 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %105 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %131, %85
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 10
  br i1 %108, label %109, label %134

109:                                              ; preds = %106
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %117, %109
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %111, 1000
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %116 = call i32 @netlink_send(i32 %114, %struct.cn_msg* %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %110

120:                                              ; preds = %110
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %123 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %127 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @ulog(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %121, i32 %125, i32 %129)
  br label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %17, align 4
  br label %106

134:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %210

135:                                              ; preds = %82
  %136 = load i32, i32* %6, align 4
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 0
  store i32 %136, i32* %137, align 8
  br label %138

138:                                              ; preds = %206, %153, %135
  %139 = load i32, i32* @need_exit, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  br i1 %141, label %142, label %207

142:                                              ; preds = %138
  %143 = load i32, i32* @POLLIN, align 4
  %144 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 2
  store i32 %143, i32* %144, align 8
  %145 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = call i32 @poll(%struct.pollfd* %14, i32 1, i32 -1)
  switch i32 %146, label %154 [
    i32 0, label %147
    i32 -1, label %148
  ]

147:                                              ; preds = %142
  store i32 1, i32* @need_exit, align 4
  br label %154

148:                                              ; preds = %142
  %149 = load i32, i32* @errno, align 4
  %150 = load i32, i32* @EINTR, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* @need_exit, align 4
  br label %154

153:                                              ; preds = %148
  br label %138

154:                                              ; preds = %142, %152, %147
  %155 = load i32, i32* @need_exit, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %207

158:                                              ; preds = %154
  %159 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %160 = call i32 @memset(i8* %159, i32 0, i32 1024)
  %161 = load i32, i32* %6, align 4
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %163 = call i32 @recv(i32 %161, i8* %162, i32 1024, i32 0)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @close(i32 %168)
  store i32 -1, i32* %3, align 4
  br label %210

170:                                              ; preds = %158
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %172 = bitcast i8* %171 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %172, %struct.nlmsghdr** %9, align 8
  %173 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %174 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  switch i32 %175, label %205 [
    i32 128, label %176
    i32 129, label %181
  ]

176:                                              ; preds = %170
  %177 = load i32*, i32** %12, align 8
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %179 = load i32*, i32** %12, align 8
  %180 = call i32 @fflush(i32* %179)
  br label %206

181:                                              ; preds = %170
  %182 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %183 = call i64 @NLMSG_DATA(%struct.nlmsghdr* %182)
  %184 = inttoptr i64 %183 to %struct.cn_msg*
  store %struct.cn_msg* %184, %struct.cn_msg** %11, align 8
  %185 = call i32 @time(i32* %13)
  %186 = load i32*, i32** %12, align 8
  %187 = call i8* @ctime(i32* %13)
  %188 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %189 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %193 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %197 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.cn_msg*, %struct.cn_msg** %11, align 8
  %200 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %187, i32 %191, i32 %195, i32 %198, i32 %201)
  %203 = load i32*, i32** %12, align 8
  %204 = call i32 @fflush(i32* %203)
  br label %206

205:                                              ; preds = %170
  br label %206

206:                                              ; preds = %205, %181, %176
  br label %138

207:                                              ; preds = %157, %138
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @close(i32 %208)
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %207, %166, %134, %78, %64, %28, %26
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ulog(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @netlink_send(i32, %struct.cn_msg*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
